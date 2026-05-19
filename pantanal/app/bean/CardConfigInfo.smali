.class public final Lpantanal/app/bean/CardConfigInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/CardConfigInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/CardConfigInfo$Companion;


# instance fields
.field private category:I

.field private componentName:Ljava/lang/String;

.field private defaultSubscribed:I

.field private desc:Ljava/lang/String;

.field private displayArea:I

.field private dragonFlySecure:Z

.field private dragonFlyService:Ljava/lang/String;

.field private dragonFlyType:I

.field private groupIcon:Ljava/lang/String;

.field private groupId:I

.field private groupOrder:I

.field private groupTitle:Ljava/lang/String;

.field private final identification:Ljava/lang/String;

.field private instantCardUrl:Ljava/lang/String;

.field private final intentId:Ljava/lang/Long;

.field private isDarkStyle:Z

.field private loadFailDp:Ljava/lang/String;

.field private loadFailPicPath:Ljava/lang/String;

.field private loadingBgIcon:Ljava/lang/String;

.field private loadingIcon:Ljava/lang/String;

.field private minHeight:I

.field private minWidth:I

.field private miniAppIcon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private operatingIcon:I

.field private orderInGroup:I

.field private packageName:Ljava/lang/String;

.field private final policy:Ljava/lang/String;

.field private preview:Ljava/lang/String;

.field private previewSw480:Ljava/lang/String;

.field private reservedFlag:I

.field private resizable:Z

.field private final serviceCategory:I

.field private serviceId:Ljava/lang/String;

.field private settingUrl:Ljava/lang/String;

.field private showTitle:I

.field private showWhenLocked:Z

.field private size:I

.field private skeletonDarkPicPath:Ljava/lang/String;

.field private skeletonPicPath:Ljava/lang/String;

.field private final supportSuperChannel:Z

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/bean/CardConfigInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/bean/CardConfigInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/bean/CardConfigInfo;->Companion:Lpantanal/app/bean/CardConfigInfo$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V
    .registers 83

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move/from16 v36, p36

    move-object/from16 v37, p37

    move/from16 v38, p38

    move/from16 v39, p39

    const-string v40, ""

    const/16 v41, 0x0

    const-string v42, ""

    invoke-direct/range {v0 .. v42}, Lpantanal/app/bean/CardConfigInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 82

    move/from16 v0, p40

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    move/from16 v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_12

    :cond_10
    move/from16 v3, p2

    :goto_12
    and-int/lit8 v4, v0, 0x4

    const-string v5, ""

    if-eqz v4, :cond_1a

    move-object v4, v5

    goto :goto_1c

    :cond_1a
    move-object/from16 v4, p3

    :goto_1c
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_22

    move-object v6, v5

    goto :goto_24

    :cond_22
    move-object/from16 v6, p4

    :goto_24
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_2a

    move-object v7, v5

    goto :goto_2c

    :cond_2a
    move-object/from16 v7, p5

    :goto_2c
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_32

    move-object v8, v5

    goto :goto_34

    :cond_32
    move-object/from16 v8, p6

    :goto_34
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_3a

    move-object v9, v5

    goto :goto_3c

    :cond_3a
    move-object/from16 v9, p7

    :goto_3c
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_42

    const/4 v10, 0x0

    goto :goto_44

    :cond_42
    move/from16 v10, p8

    :goto_44
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_4a

    const/4 v11, 0x0

    goto :goto_4c

    :cond_4a
    move/from16 v11, p9

    :goto_4c
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_52

    move-object v12, v5

    goto :goto_54

    :cond_52
    move-object/from16 v12, p10

    :goto_54
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_5a

    move-object v13, v5

    goto :goto_5c

    :cond_5a
    move-object/from16 v13, p11

    :goto_5c
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_62

    const/4 v14, 0x0

    goto :goto_64

    :cond_62
    move/from16 v14, p12

    :goto_64
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_6a

    const/4 v15, 0x0

    goto :goto_6c

    :cond_6a
    move/from16 v15, p13

    :goto_6c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_72

    const/4 v2, 0x0

    goto :goto_74

    :cond_72
    move/from16 v2, p14

    :goto_74
    move-object/from16 p1, v5

    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_7d

    move-object/from16 v5, p1

    goto :goto_7f

    :cond_7d
    move-object/from16 v5, p15

    :goto_7f
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_89

    const/16 v16, 0x0

    goto :goto_8b

    :cond_89
    move/from16 v16, p16

    :goto_8b
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_94

    const/16 v17, 0x0

    goto :goto_96

    :cond_94
    move/from16 v17, p17

    :goto_96
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_9f

    const/16 v18, 0x0

    goto :goto_a1

    :cond_9f
    move/from16 v18, p18

    :goto_a1
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_aa

    move-object/from16 v19, p1

    goto :goto_ac

    :cond_aa
    move-object/from16 v19, p19

    :goto_ac
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_b5

    move-object/from16 v20, p1

    goto :goto_b7

    :cond_b5
    move-object/from16 v20, p20

    :goto_b7
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_c0

    const/16 v21, 0x0

    goto :goto_c2

    :cond_c0
    move/from16 v21, p21

    :goto_c2
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_cb

    const/16 v22, 0x0

    goto :goto_cd

    :cond_cb
    move/from16 v22, p22

    :goto_cd
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_d6

    const/16 v23, 0x0

    goto :goto_d8

    :cond_d6
    move/from16 v23, p23

    :goto_d8
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_e1

    move-object/from16 v24, p1

    goto :goto_e3

    :cond_e1
    move-object/from16 v24, p24

    :goto_e3
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_ec

    move-object/from16 v25, p1

    goto :goto_ee

    :cond_ec
    move-object/from16 v25, p25

    :goto_ee
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_f7

    const/16 v26, 0x0

    goto :goto_f9

    :cond_f7
    move/from16 v26, p26

    :goto_f9
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    const/16 v28, 0x0

    if-eqz v27, :cond_104

    move-object/from16 v27, v28

    goto :goto_106

    :cond_104
    move-object/from16 v27, p27

    :goto_106
    const/high16 v29, 0x8000000

    and-int v29, v0, v29

    if-eqz v29, :cond_10d

    goto :goto_10f

    :cond_10d
    move-object/from16 v28, p28

    :goto_10f
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_118

    const/16 v29, 0x0

    goto :goto_11a

    :cond_118
    move/from16 v29, p29

    :goto_11a
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_123

    const/16 v30, 0x0

    goto :goto_125

    :cond_123
    move/from16 v30, p30

    :goto_125
    const/high16 v31, 0x40000000  # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_12e

    move-object/from16 v31, p1

    goto :goto_130

    :cond_12e
    move-object/from16 v31, p31

    :goto_130
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_139

    move-object/from16 v0, p1

    goto :goto_13b

    :cond_139
    move-object/from16 v0, p32

    :goto_13b
    and-int/lit8 v32, p41, 0x1

    if-eqz v32, :cond_142

    move-object/from16 v32, p1

    goto :goto_144

    :cond_142
    move-object/from16 v32, p33

    :goto_144
    and-int/lit8 v33, p41, 0x2

    if-eqz v33, :cond_14b

    move-object/from16 v33, p1

    goto :goto_14d

    :cond_14b
    move-object/from16 v33, p34

    :goto_14d
    and-int/lit8 v34, p41, 0x4

    if-eqz v34, :cond_154

    move-object/from16 v34, p1

    goto :goto_156

    :cond_154
    move-object/from16 v34, p35

    :goto_156
    and-int/lit8 v35, p41, 0x8

    if-eqz v35, :cond_15d

    const/16 v35, 0x0

    goto :goto_15f

    :cond_15d
    move/from16 v35, p36

    :goto_15f
    and-int/lit8 v36, p41, 0x10

    if-eqz v36, :cond_166

    move-object/from16 v36, p1

    goto :goto_168

    :cond_166
    move-object/from16 v36, p37

    :goto_168
    and-int/lit8 v37, p41, 0x20

    if-eqz v37, :cond_16f

    const/16 v37, 0x0

    goto :goto_171

    :cond_16f
    move/from16 v37, p38

    :goto_171
    and-int/lit8 v38, p41, 0x40

    if-eqz v38, :cond_178

    const/16 v38, 0x0

    goto :goto_17a

    :cond_178
    move/from16 v38, p39

    :goto_17a
    move/from16 p1, v1

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move/from16 p12, v14

    move/from16 p13, v15

    move/from16 p14, v2

    move-object/from16 p15, v5

    move/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move/from16 p21, v21

    move/from16 p22, v22

    move/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move/from16 p26, v26

    move-object/from16 p27, v27

    move-object/from16 p28, v28

    move/from16 p29, v29

    move/from16 p30, v30

    move-object/from16 p31, v31

    move-object/from16 p32, v0

    move-object/from16 p33, v32

    move-object/from16 p34, v33

    move-object/from16 p35, v34

    move/from16 p36, v35

    move-object/from16 p37, v36

    move/from16 p38, v37

    move/from16 p39, v38

    invoke-direct/range {p0 .. p39}, Lpantanal/app/bean/CardConfigInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V
    .registers 45

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->type:I

    move v1, p2

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    move-object v1, p3

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    move v1, p8

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->size:I

    move v1, p9

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    move-object v1, p10

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    move v1, p12

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->category:I

    move v1, p13

    iput-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    move/from16 v1, p14

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    move/from16 v1, p16

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    move/from16 v1, p17

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    move/from16 v1, p18

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    move/from16 v1, p21

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    move/from16 v1, p22

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    move/from16 v1, p23

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    move-object/from16 v1, p24

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    move/from16 v1, p26

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    move-object/from16 v1, p27

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    move-object/from16 v1, p28

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    move/from16 v1, p29

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    move/from16 v1, p30

    iput-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    move-object/from16 v1, p31

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    move-object/from16 v1, p32

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    move-object/from16 v1, p33

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    move-object/from16 v1, p34

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    move-object/from16 v1, p35

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    move/from16 v1, p36

    iput v1, v0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    move-object/from16 v1, p37

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    move/from16 v1, p38

    iput-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    move/from16 v1, p39

    iput-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    move-object/from16 v1, p40

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    move/from16 v1, p41

    iput-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    move-object/from16 v1, p42

    iput-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 91

    move/from16 v0, p44

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    move/from16 v43, v1

    goto :goto_c

    :cond_a
    move/from16 v43, p41

    :goto_c
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    move-object/from16 v44, v0

    goto :goto_16

    :cond_14
    move-object/from16 v44, p42

    :goto_16
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move/from16 v31, p29

    move/from16 v32, p30

    move-object/from16 v33, p31

    move-object/from16 v34, p32

    move-object/from16 v35, p33

    move-object/from16 v36, p34

    move-object/from16 v37, p35

    move/from16 v38, p36

    move-object/from16 v39, p37

    move/from16 v40, p38

    move/from16 v41, p39

    move-object/from16 v42, p40

    invoke-direct/range {v2 .. v44}, Lpantanal/app/bean/CardConfigInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/bean/CardConfigInfo;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;IILjava/lang/Object;)Lpantanal/app/bean/CardConfigInfo;
    .registers 63

    move-object/from16 v0, p0

    move/from16 v1, p43

    move/from16 v2, p44

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_d

    iget v3, v0, Lpantanal/app/bean/CardConfigInfo;->type:I

    goto :goto_f

    :cond_d
    move/from16 v3, p1

    :goto_f
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_16

    iget v4, v0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    goto :goto_18

    :cond_16
    move/from16 v4, p2

    :goto_18
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    move-object/from16 v5, p3

    :goto_21
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_28

    iget-object v6, v0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    goto :goto_2a

    :cond_28
    move-object/from16 v6, p4

    :goto_2a
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_31

    iget-object v7, v0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    goto :goto_33

    :cond_31
    move-object/from16 v7, p5

    :goto_33
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p6

    :goto_3c
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_43

    iget-object v9, v0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    goto :goto_45

    :cond_43
    move-object/from16 v9, p7

    :goto_45
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4c

    iget v10, v0, Lpantanal/app/bean/CardConfigInfo;->size:I

    goto :goto_4e

    :cond_4c
    move/from16 v10, p8

    :goto_4e
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_55

    iget v11, v0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    goto :goto_57

    :cond_55
    move/from16 v11, p9

    :goto_57
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_5e

    iget-object v12, v0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    goto :goto_60

    :cond_5e
    move-object/from16 v12, p10

    :goto_60
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_67

    iget-object v13, v0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    goto :goto_69

    :cond_67
    move-object/from16 v13, p11

    :goto_69
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_70

    iget v14, v0, Lpantanal/app/bean/CardConfigInfo;->category:I

    goto :goto_72

    :cond_70
    move/from16 v14, p12

    :goto_72
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_79

    iget-boolean v15, v0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    goto :goto_7b

    :cond_79
    move/from16 v15, p13

    :goto_7b
    move/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_84

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    goto :goto_86

    :cond_84
    move/from16 v15, p14

    :goto_86
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8f

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    goto :goto_91

    :cond_8f
    move-object/from16 v15, p15

    :goto_91
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_9d

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    goto :goto_9f

    :cond_9d
    move/from16 v15, p16

    :goto_9f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_aa

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    goto :goto_ac

    :cond_aa
    move/from16 v15, p17

    :goto_ac
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_b7

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    goto :goto_b9

    :cond_b7
    move/from16 v15, p18

    :goto_b9
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_c4

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    goto :goto_c6

    :cond_c4
    move-object/from16 v15, p19

    :goto_c6
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_d1

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    goto :goto_d3

    :cond_d1
    move-object/from16 v15, p20

    :goto_d3
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_de

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    goto :goto_e0

    :cond_de
    move/from16 v15, p21

    :goto_e0
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_eb

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    goto :goto_ed

    :cond_eb
    move/from16 v15, p22

    :goto_ed
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p22, v15

    if-eqz v16, :cond_f8

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    goto :goto_fa

    :cond_f8
    move/from16 v15, p23

    :goto_fa
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_105

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    goto :goto_107

    :cond_105
    move-object/from16 v15, p24

    :goto_107
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_112

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    goto :goto_114

    :cond_112
    move-object/from16 v15, p25

    :goto_114
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_11f

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    goto :goto_121

    :cond_11f
    move/from16 v15, p26

    :goto_121
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_12c

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    goto :goto_12e

    :cond_12c
    move-object/from16 v15, p27

    :goto_12e
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_139

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    goto :goto_13b

    :cond_139
    move-object/from16 v15, p28

    :goto_13b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_146

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    goto :goto_148

    :cond_146
    move/from16 v15, p29

    :goto_148
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_153

    iget-boolean v15, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    goto :goto_155

    :cond_153
    move/from16 v15, p30

    :goto_155
    const/high16 v16, 0x40000000  # 2.0f

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_160

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    goto :goto_162

    :cond_160
    move-object/from16 v15, p31

    :goto_162
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_16b

    iget-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    goto :goto_16d

    :cond_16b
    move-object/from16 v1, p32

    :goto_16d
    and-int/lit8 v16, v2, 0x1

    move-object/from16 p32, v1

    if-eqz v16, :cond_176

    iget-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    goto :goto_178

    :cond_176
    move-object/from16 v1, p33

    :goto_178
    and-int/lit8 v16, v2, 0x2

    move-object/from16 p33, v1

    if-eqz v16, :cond_181

    iget-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    goto :goto_183

    :cond_181
    move-object/from16 v1, p34

    :goto_183
    and-int/lit8 v16, v2, 0x4

    move-object/from16 p34, v1

    if-eqz v16, :cond_18c

    iget-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    goto :goto_18e

    :cond_18c
    move-object/from16 v1, p35

    :goto_18e
    and-int/lit8 v16, v2, 0x8

    move-object/from16 p35, v1

    if-eqz v16, :cond_197

    iget v1, v0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    goto :goto_199

    :cond_197
    move/from16 v1, p36

    :goto_199
    and-int/lit8 v16, v2, 0x10

    move/from16 p36, v1

    if-eqz v16, :cond_1a2

    iget-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    goto :goto_1a4

    :cond_1a2
    move-object/from16 v1, p37

    :goto_1a4
    and-int/lit8 v16, v2, 0x20

    move-object/from16 p37, v1

    if-eqz v16, :cond_1ad

    iget-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    goto :goto_1af

    :cond_1ad
    move/from16 v1, p38

    :goto_1af
    and-int/lit8 v16, v2, 0x40

    move/from16 p38, v1

    if-eqz v16, :cond_1b8

    iget-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    goto :goto_1ba

    :cond_1b8
    move/from16 v1, p39

    :goto_1ba
    move/from16 p39, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_1c3

    iget-object v1, v0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    goto :goto_1c5

    :cond_1c3
    move-object/from16 v1, p40

    :goto_1c5
    move-object/from16 p40, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_1ce

    iget-boolean v1, v0, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    goto :goto_1d0

    :cond_1ce
    move/from16 v1, p41

    :goto_1d0
    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1d7

    iget-object v2, v0, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    goto :goto_1d9

    :cond_1d7
    move-object/from16 v2, p42

    :goto_1d9
    move/from16 p1, v3

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move/from16 p12, v14

    move-object/from16 p31, v15

    move/from16 p41, v1

    move-object/from16 p42, v2

    invoke-virtual/range {p0 .. p42}, Lpantanal/app/bean/CardConfigInfo;->copy(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)Lpantanal/app/bean/CardConfigInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->type:I

    return p0
.end method

.method public final component10()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->category:I

    return p0
.end method

.method public final component13()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    return p0
.end method

.method public final component14()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    return p0
.end method

.method public final component15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    return p0
.end method

.method public final component17()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    return p0
.end method

.method public final component18()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    return p0
.end method

.method public final component19()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    return p0
.end method

.method public final component20()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    return p0
.end method

.method public final component22()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    return p0
.end method

.method public final component23()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    return p0
.end method

.method public final component24()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    return-object p0
.end method

.method public final component25()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component26()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    return p0
.end method

.method public final component27()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component28()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public final component29()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component30()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    return p0
.end method

.method public final component31()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    return-object p0
.end method

.method public final component32()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component33()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component34()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component35()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    return-object p0
.end method

.method public final component36()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    return p0
.end method

.method public final component37()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final component38()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    return p0
.end method

.method public final component39()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final component40()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component41()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    return p0
.end method

.method public final component42()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->size:I

    return p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    return p0
.end method

.method public final copy(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)Lpantanal/app/bean/CardConfigInfo;
    .registers 87

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move/from16 v36, p36

    move-object/from16 v37, p37

    move/from16 v38, p38

    move/from16 v39, p39

    move-object/from16 v40, p40

    move/from16 v41, p41

    move-object/from16 v42, p42

    new-instance v43, Lpantanal/app/bean/CardConfigInfo;

    move-object/from16 v0, v43

    invoke-direct/range {v0 .. v42}, Lpantanal/app/bean/CardConfigInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    return-object v43
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/bean/CardConfigInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/bean/CardConfigInfo;

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->type:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->type:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->size:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->size:I

    if-eq v1, v3, :cond_58

    return v2

    :cond_58
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    if-eq v1, v3, :cond_5f

    return v2

    :cond_5f
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    :cond_6a
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v2

    :cond_75
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->category:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->category:I

    if-eq v1, v3, :cond_7c

    return v2

    :cond_7c
    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    if-eq v1, v3, :cond_83

    return v2

    :cond_83
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    if-eq v1, v3, :cond_8a

    return v2

    :cond_8a
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    return v2

    :cond_95
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    if-eq v1, v3, :cond_9c

    return v2

    :cond_9c
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    if-eq v1, v3, :cond_a3

    return v2

    :cond_a3
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    if-eq v1, v3, :cond_aa

    return v2

    :cond_aa
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    return v2

    :cond_b5
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    return v2

    :cond_c0
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    if-eq v1, v3, :cond_c7

    return v2

    :cond_c7
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    if-eq v1, v3, :cond_ce

    return v2

    :cond_ce
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    if-eq v1, v3, :cond_d5

    return v2

    :cond_d5
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e0

    return v2

    :cond_e0
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_eb

    return v2

    :cond_eb
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    if-eq v1, v3, :cond_f2

    return v2

    :cond_f2
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fd

    return v2

    :cond_fd
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_108

    return v2

    :cond_108
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    if-eq v1, v3, :cond_10f

    return v2

    :cond_10f
    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    if-eq v1, v3, :cond_116

    return v2

    :cond_116
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_121

    return v2

    :cond_121
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12c

    return v2

    :cond_12c
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    return v2

    :cond_137
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_142

    return v2

    :cond_142
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14d

    return v2

    :cond_14d
    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    iget v3, p1, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    if-eq v1, v3, :cond_154

    return v2

    :cond_154
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15f

    return v2

    :cond_15f
    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    if-eq v1, v3, :cond_166

    return v2

    :cond_166
    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    if-eq v1, v3, :cond_16d

    return v2

    :cond_16d
    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_178

    return v2

    :cond_178
    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    iget-boolean v3, p1, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    if-eq v1, v3, :cond_17f

    return v2

    :cond_17f
    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    iget-object p1, p1, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18a

    return v2

    :cond_18a
    return v0
.end method

.method public final getCategory()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->category:I

    return p0
.end method

.method public final getComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDefaultSubscribed()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    return p0
.end method

.method public final getDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayArea()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    return p0
.end method

.method public final getDragonFlySecure()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    return p0
.end method

.method public final getDragonFlyService()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    return-object p0
.end method

.method public final getDragonFlyType()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    return p0
.end method

.method public final getGroupIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final getGroupId()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    return p0
.end method

.method public final getGroupOrder()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    return p0
.end method

.method public final getGroupTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getIdentification()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstantCardUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getIntentId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getLoadFailDp()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoadFailPicPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoadingBgIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoadingIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinHeight()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    return p0
.end method

.method public final getMinWidth()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    return p0
.end method

.method public final getMiniAppIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getOperatingIcon()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    return p0
.end method

.method public final getOrderInGroup()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPolicy()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreview()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreviewSw480()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    return-object p0
.end method

.method public final getReservedFlag()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    return p0
.end method

.method public final getResizable()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    return p0
.end method

.method public final getServiceCategory()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSettingUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getShowTitle()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    return p0
.end method

.method public final getShowWhenLocked()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    return p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->size:I

    return p0
.end method

.method public final getSkeletonDarkPicPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getSkeletonPicPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportSuperChannel()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/CardConfigInfo;->type:I

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lpantanal/app/bean/CardConfigInfo;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_28
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_31

    move v1, v2

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_35
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    if-nez v1, :cond_3e

    move v1, v2

    goto :goto_42

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_42
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    if-nez v1, :cond_4b

    move v1, v2

    goto :goto_4f

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->size:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_66

    move v1, v2

    goto :goto_6a

    :cond_66
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    if-nez v1, :cond_73

    move v1, v2

    goto :goto_77

    :cond_73
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_77
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->category:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_88

    move v1, v3

    :cond_88
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    if-nez v1, :cond_99

    move v1, v2

    goto :goto_9d

    :cond_99
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    if-nez v1, :cond_ba

    move v1, v2

    goto :goto_be

    :cond_ba
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_be
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    if-nez v1, :cond_c7

    move v1, v2

    goto :goto_cb

    :cond_c7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_cb
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    if-nez v1, :cond_e8

    move v1, v2

    goto :goto_ec

    :cond_e8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_ec
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    if-nez v1, :cond_f5

    move v1, v2

    goto :goto_f9

    :cond_f5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    if-nez v1, :cond_10a

    move v1, v2

    goto :goto_10e

    :cond_10a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_10e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    if-nez v1, :cond_117

    move v1, v2

    goto :goto_11b

    :cond_117
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    if-eqz v1, :cond_12b

    move v1, v3

    :cond_12b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    if-nez v1, :cond_134

    move v1, v2

    goto :goto_138

    :cond_134
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_138
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    if-nez v1, :cond_141

    move v1, v2

    goto :goto_145

    :cond_141
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_145
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    if-nez v1, :cond_14e

    move v1, v2

    goto :goto_152

    :cond_14e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_152
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    if-nez v1, :cond_15b

    move v1, v2

    goto :goto_15f

    :cond_15b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_15f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    if-nez v1, :cond_168

    move v1, v2

    goto :goto_16c

    :cond_168
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    if-nez v1, :cond_17d

    move v1, v2

    goto :goto_181

    :cond_17d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_181
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    if-eqz v1, :cond_189

    move v1, v3

    :cond_189
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    if-eqz v1, :cond_191

    move v1, v3

    :cond_191
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    if-nez v1, :cond_19a

    move v1, v2

    goto :goto_19e

    :cond_19a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_19e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    if-eqz v1, :cond_1a6

    goto :goto_1a7

    :cond_1a6
    move v3, v1

    :goto_1a7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    if-nez p0, :cond_1af

    goto :goto_1b3

    :cond_1af
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b3
    add-int/2addr v0, v2

    return v0
.end method

.method public final isDarkStyle()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    return p0
.end method

.method public final setCategory(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->category:I

    return-void
.end method

.method public final setComponentName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    return-void
.end method

.method public final setDarkStyle(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    return-void
.end method

.method public final setDefaultSubscribed(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayArea(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    return-void
.end method

.method public final setDragonFlySecure(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    return-void
.end method

.method public final setDragonFlyService(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    return-void
.end method

.method public final setDragonFlyType(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    return-void
.end method

.method public final setGroupIcon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    return-void
.end method

.method public final setGroupId(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    return-void
.end method

.method public final setGroupOrder(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    return-void
.end method

.method public final setGroupTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    return-void
.end method

.method public final setInstantCardUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    return-void
.end method

.method public final setLoadFailDp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    return-void
.end method

.method public final setLoadFailPicPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    return-void
.end method

.method public final setLoadingBgIcon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    return-void
.end method

.method public final setLoadingIcon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    return-void
.end method

.method public final setMinHeight(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    return-void
.end method

.method public final setMinWidth(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    return-void
.end method

.method public final setMiniAppIcon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOperatingIcon(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    return-void
.end method

.method public final setOrderInGroup(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setPreview(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public final setPreviewSw480(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    return-void
.end method

.method public final setReservedFlag(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    return-void
.end method

.method public final setResizable(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    return-void
.end method

.method public final setServiceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public final setSettingUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    return-void
.end method

.method public final setShowTitle(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    return-void
.end method

.method public final setShowWhenLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    return-void
.end method

.method public final setSize(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->size:I

    return-void
.end method

.method public final setSkeletonDarkPicPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    return-void
.end method

.method public final setSkeletonPicPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/bean/CardConfigInfo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 45

    move-object/from16 v0, p0

    iget v1, v0, Lpantanal/app/bean/CardConfigInfo;->type:I

    iget v2, v0, Lpantanal/app/bean/CardConfigInfo;->groupId:I

    iget-object v3, v0, Lpantanal/app/bean/CardConfigInfo;->groupTitle:Ljava/lang/String;

    iget-object v4, v0, Lpantanal/app/bean/CardConfigInfo;->groupIcon:Ljava/lang/String;

    iget-object v5, v0, Lpantanal/app/bean/CardConfigInfo;->name:Ljava/lang/String;

    iget-object v6, v0, Lpantanal/app/bean/CardConfigInfo;->desc:Ljava/lang/String;

    iget-object v7, v0, Lpantanal/app/bean/CardConfigInfo;->preview:Ljava/lang/String;

    iget v8, v0, Lpantanal/app/bean/CardConfigInfo;->size:I

    iget v9, v0, Lpantanal/app/bean/CardConfigInfo;->orderInGroup:I

    iget-object v10, v0, Lpantanal/app/bean/CardConfigInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lpantanal/app/bean/CardConfigInfo;->componentName:Ljava/lang/String;

    iget v12, v0, Lpantanal/app/bean/CardConfigInfo;->category:I

    iget-boolean v13, v0, Lpantanal/app/bean/CardConfigInfo;->resizable:Z

    iget v14, v0, Lpantanal/app/bean/CardConfigInfo;->operatingIcon:I

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->settingUrl:Ljava/lang/String;

    move-object/from16 v16, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->displayArea:I

    move/from16 v17, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->minWidth:I

    move/from16 v18, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->minHeight:I

    move/from16 v19, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    move-object/from16 v21, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->reservedFlag:I

    move/from16 v22, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->defaultSubscribed:I

    move/from16 v23, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->groupOrder:I

    move/from16 v24, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->previewSw480:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->serviceId:Ljava/lang/String;

    move-object/from16 v26, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->serviceCategory:I

    move/from16 v27, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->intentId:Ljava/lang/Long;

    move-object/from16 v28, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->policy:Ljava/lang/String;

    move-object/from16 v29, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyType:I

    move/from16 v30, v15

    iget-boolean v15, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlySecure:Z

    move/from16 v31, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->dragonFlyService:Ljava/lang/String;

    move-object/from16 v32, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->skeletonPicPath:Ljava/lang/String;

    move-object/from16 v33, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->skeletonDarkPicPath:Ljava/lang/String;

    move-object/from16 v34, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->loadFailPicPath:Ljava/lang/String;

    move-object/from16 v35, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->loadFailDp:Ljava/lang/String;

    move-object/from16 v36, v15

    iget v15, v0, Lpantanal/app/bean/CardConfigInfo;->showTitle:I

    move/from16 v37, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->miniAppIcon:Ljava/lang/String;

    move-object/from16 v38, v15

    iget-boolean v15, v0, Lpantanal/app/bean/CardConfigInfo;->isDarkStyle:Z

    move/from16 v39, v15

    iget-boolean v15, v0, Lpantanal/app/bean/CardConfigInfo;->showWhenLocked:Z

    move/from16 v40, v15

    iget-object v15, v0, Lpantanal/app/bean/CardConfigInfo;->instantCardUrl:Ljava/lang/String;

    move-object/from16 v41, v15

    iget-boolean v15, v0, Lpantanal/app/bean/CardConfigInfo;->supportSuperChannel:Z

    iget-object v0, v0, Lpantanal/app/bean/CardConfigInfo;->identification:Ljava/lang/String;

    move-object/from16 p0, v0

    const-string v0, "CardConfigInfo(type="

    move/from16 v42, v15

    const-string v15, ", groupId="

    move/from16 v43, v13

    const-string v13, ", groupTitle="

    invoke-static {v0, v1, v15, v2, v13}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupIcon="

    const-string v2, ", name="

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", desc="

    const-string v2, ", preview="

    invoke-static {v0, v5, v1, v6, v2}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", size="

    const-string v2, ", orderInGroup="

    invoke-static {v0, v7, v1, v8, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ", packageName="

    const-string v2, ", componentName="

    invoke-static {v0, v9, v1, v10, v2}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", category="

    const-string v2, ", resizable="

    invoke-static {v0, v11, v1, v12, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ", operatingIcon="

    const-string v2, ", settingUrl="

    move/from16 v3, v43

    invoke-static {v0, v3, v1, v14, v2}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", displayArea="

    const-string v2, ", minWidth="

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ", minHeight="

    const-string v2, ", loadingIcon="

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", loadingBgIcon="

    const-string v2, ", reservedFlag="

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", defaultSubscribed="

    const-string v2, ", groupOrder="

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", previewSw480="

    const-string v2, ", serviceId="

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", serviceCategory="

    const-string v2, ", intentId="

    move-object/from16 v3, v26

    move/from16 v4, v27

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dragonFlyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dragonFlySecure="

    const-string v2, ", dragonFlyService="

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", skeletonPicPath="

    const-string v2, ", skeletonDarkPicPath="

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", loadFailPicPath="

    const-string v2, ", loadFailDp="

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", showTitle="

    const-string v2, ", miniAppIcon="

    move-object/from16 v3, v36

    move/from16 v4, v37

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDarkStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showWhenLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", instantCardUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportSuperChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", identification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
