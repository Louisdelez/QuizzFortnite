using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }

# ============================================================
#  map_builder.verse — GENERATION de la map EN VERSE (SpawnProp)
#  Construit le chemin droit + 4 portails par question, selon N.
#  C'est ICI que la map est "creee" : tout en code.
# ============================================================

map_builder := class:
    # --- Parametres de layout (cm). Modifie-les pour adapter la forme. ---
    SegmentLength : float = 1024.0   # longueur d'une question (axe X)
    LaneSpacing : float = 300.0      # ecart entre 2 portails (axe Y)
    LaneCount : int = 4              # nombre de reponses (A,B,C,D)
    FloorTileSize : float = 512.0    # taille d'une dalle de sol
    GateRatio : float = 0.85         # position des portails dans le segment
    StartPad : float = 768.0         # sas de depart
    EndPad : float = 768.0           # salle d'arrivee
    FloorMargin : float = 200.0      # marge de sol de chaque cote

    # Reference des props de portail spawnes (cle = Q*LaneCount + lane) pour les animer.
    var Portals : [int]creative_prop = map{}

    # --- Math de layout (partagee avec la detection du quiz_manager) ---
    LaneY(I : int)<transacts> : float =
        (I * 1.0 - (LaneCount * 1.0 - 1.0) / 2.0) * LaneSpacing

    GateX(Q : int)<transacts> : float =
        Q * 1.0 * SegmentLength + SegmentLength * GateRatio

    SegmentStartX(Q : int)<transacts> : float =
        Q * 1.0 * SegmentLength

    # Position de depart du joueur (centre du sas de depart).
    StartPosition()<transacts> : vector3 =
        vector3{ X := -StartPad / 2.0, Y := 0.0, Z := 100.0 }

    # Arrondi superieur (isole pour s'adapter a l'API d'arrondi).
    CeilInt(F : float)<transacts> : int =
        if (Whole := Floor[F]):
            if (Whole * 1.0 < F) { Whole + 1 } else { Whole }
        else:
            0

    # --- Construction complete pour N questions ---
    Build(NumQuestions : int, FloorA : creative_prop_asset, PortalA : creative_prop_asset)<suspends> : void =
        SpawnFloor(NumQuestions, FloorA)
        var Q : int = 0
        loop:
            if (Q >= NumQuestions) { break }
            SpawnSegmentPortals(Q, PortalA)
            Sleep(0.0)
            set Q += 1

    SpawnFloor(N : int, FloorA : creative_prop_asset)<suspends> : void =
        FloorWidth := LaneCount * 1.0 * LaneSpacing + 2.0 * FloorMargin
        XStart := -StartPad
        XEnd := N * 1.0 * SegmentLength + EndPad
        NX := CeilInt((XEnd - XStart) / FloorTileSize)
        NY := CeilInt(FloorWidth / FloorTileSize)
        Print("QUIZ: SpawnFloor NX={NX} NY={NY}")
        var IX : int = 0
        loop:
            if (IX >= NX) { break }
            var IY : int = 0
            loop:
                if (IY >= NY) { break }
                FX := XStart + (IX * 1.0 + 0.5) * FloorTileSize
                FY := -FloorWidth / 2.0 + (IY * 1.0 + 0.5) * FloorTileSize
                SpawnAt(FloorA, vector3{ X := FX, Y := FY, Z := 0.0 })
                set IY += 1
            Sleep(0.0)
            set IX += 1

    SpawnSegmentPortals(Q : int, PortalA : creative_prop_asset)<suspends> : void =
        var I : int = 0
        loop:
            if (I >= LaneCount) { break }
            MaybeProp := SpawnAt(PortalA, vector3{ X := GateX(Q), Y := LaneY(I), Z := 0.0 })
            if (P := MaybeProp?):
                if (set Portals[PortalKey(Q, I)] = P) {}
            set I += 1

    PortalKey(Q : int, I : int)<transacts> : int = Q * LaneCount + I

    # Spawne un prop a une position (rotation identite) et renvoie l'instance.
    SpawnAt(Asset : creative_prop_asset, Pos : vector3) : ?creative_prop =
        Tuple := SpawnProp(Asset, Pos, IdentityRotation())
        Tuple(0)   # element 0 du tuple = ?creative_prop

    # Effet "bonne reponse" : petite impulsion verticale du portail (pur Verse).
    PulsePortal(Q : int, I : int)<suspends> : void =
        if (P := Portals[PortalKey(Q, I)]):
            Down := vector3{ X := GateX(Q), Y := LaneY(I), Z := 0.0 }
            Up := vector3{ X := GateX(Q), Y := LaneY(I), Z := 90.0 }
            P.MoveTo(Up, IdentityRotation(), 0.15)
            P.MoveTo(Down, IdentityRotation(), 0.15)
