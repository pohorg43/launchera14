.class public final Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_DISAPPEAR:I = 0x2

.field public static final ACTION_NOTHING:I = 0x3

.field public static final ACTION_RETRACT:I = 0x1

.field public static final Companion:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;

.field public static final PANEL_INSIDE_SLIDE:I = 0x64

.field public static final PANEL_OUTSIDE_CLICK:I = 0x65

.field public static final TAG:Ljava/lang/String; = "SeedlingCardOptions"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cancelPanelActionConfig:Ljava/lang/Integer;

.field private controlAction:Ljava/lang/Integer;

.field private dataSourcePkgName:Ljava/lang/String;

.field private extensibleActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private focusTimestamp:Ljava/lang/Long;

.field private grade:Ljava/lang/Integer;

.field private isMilestone:Z

.field private isRequestShowPanel:Ljava/lang/Boolean;

.field private lockScreenShowHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageId:Ljava/lang/String;

.field private panelActionConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private remindLevel:I

.field private requestHideStatusBar:Z

.field private shouldFocus:Z

.field private shouldShow:Z

.field private showHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->Companion:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x1ffff

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x1fe00

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "IZ",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p15

    const-string v2, "pageId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    move v2, p2

    iput-boolean v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    move-object v2, p3

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    move v2, p4

    iput-boolean v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    move-object v2, p5

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    move-object v2, p6

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    move-object v2, p7

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    move-object v2, p8

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    move-object v2, p9

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    move-object v2, p10

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    move-object v2, p11

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    move v2, p12

    iput v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 38

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    move-object/from16 v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_12

    :cond_10
    move/from16 v3, p2

    :goto_12
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    goto :goto_1a

    :cond_18
    move-object/from16 v5, p3

    :goto_1a
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_20

    const/4 v6, 0x0

    goto :goto_22

    :cond_20
    move/from16 v6, p4

    :goto_22
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_28

    const/4 v7, 0x0

    goto :goto_2a

    :cond_28
    move-object/from16 v7, p5

    :goto_2a
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_30

    const/4 v8, 0x0

    goto :goto_32

    :cond_30
    move-object/from16 v8, p6

    :goto_32
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_38

    const/4 v9, 0x0

    goto :goto_3a

    :cond_38
    move-object/from16 v9, p7

    :goto_3a
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_40

    const/4 v10, 0x0

    goto :goto_42

    :cond_40
    move-object/from16 v10, p8

    :goto_42
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_48

    const/4 v11, 0x0

    goto :goto_4a

    :cond_48
    move-object/from16 v11, p9

    :goto_4a
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_50

    const/4 v12, 0x0

    goto :goto_52

    :cond_50
    move-object/from16 v12, p10

    :goto_52
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_58

    const/4 v13, 0x0

    goto :goto_5a

    :cond_58
    move-object/from16 v13, p11

    :goto_5a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_60

    const/4 v14, 0x0

    goto :goto_62

    :cond_60
    move/from16 v14, p12

    :goto_62
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_68

    const/4 v15, 0x0

    goto :goto_6a

    :cond_68
    move/from16 v15, p13

    :goto_6a
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_70

    const/4 v2, 0x0

    goto :goto_72

    :cond_70
    move-object/from16 v2, p14

    :goto_72
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_79

    const-string v4, ""

    goto :goto_7b

    :cond_79
    move-object/from16 v4, p15

    :goto_7b
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_85

    const/16 v16, 0x0

    goto :goto_87

    :cond_85
    move-object/from16 v16, p16

    :goto_87
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_8f

    const/4 v0, 0x0

    goto :goto_91

    :cond_8f
    move/from16 v0, p17

    :goto_91
    move-object/from16 p1, v1

    move/from16 p2, v3

    move-object/from16 p3, v5

    move/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move/from16 p12, v14

    move/from16 p13, v15

    move-object/from16 p14, v2

    move-object/from16 p15, v4

    move-object/from16 p16, v16

    move/from16 p17, v0

    invoke-direct/range {p0 .. p17}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 37

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-boolean v3, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    goto :goto_16

    :cond_14
    move/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-boolean v5, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget v13, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    goto :goto_70

    :cond_6e
    move/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-boolean v14, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    goto :goto_79

    :cond_77
    move/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    goto :goto_9b

    :cond_99
    move-object/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_a4

    iget-boolean v1, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    goto :goto_a6

    :cond_a4
    move/from16 v1, p17

    :goto_a6
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p16, v15

    move/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->copy(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;Z)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCancelPanelActionConfig$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component11()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    return p0
.end method

.method public final component13()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    return p0
.end method

.method public final component14()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component17()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    return p0
.end method

.method public final component2()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    return p0
.end method

.method public final component3()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    return p0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    return-object p0
.end method

.method public final component7()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component8()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component9()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;Z)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "IZ",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    const-string v0, "pageId"

    move-object/from16 p0, v1

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v2

    :cond_67
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    return v2

    :cond_72
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    return v2

    :cond_7d
    iget v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    iget v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    if-eq v1, v3, :cond_84

    return v2

    :cond_84
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    if-eq v1, v3, :cond_8b

    return v2

    :cond_8b
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    return v2

    :cond_96
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    return v2

    :cond_a1
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    return v2

    :cond_ac
    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    iget-boolean p1, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    if-eq p0, p1, :cond_b3

    return v2

    :cond_b3
    return v0
.end method

.method public final getCancelPanelActionConfig()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getControlAction()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDataSourcePkgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtensibleActionMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getFocusTimestamp()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final getGrade()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getLockScreenShowHostMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getNotificationIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPanelActionConfigMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getRemindLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    return p0
.end method

.method public final getRequestHideStatusBar()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    return p0
.end method

.method public final getShouldFocus()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    return p0
.end method

.method public final getShouldShow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    return p0
.end method

.method public final getShowHostMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    move v2, v3

    :cond_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    if-eqz v2, :cond_28

    move v2, v3

    :cond_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    if-nez v2, :cond_31

    move v2, v1

    goto :goto_35

    :cond_31
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_35
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    if-nez v2, :cond_3e

    move v2, v1

    goto :goto_42

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_42
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    if-nez v2, :cond_4b

    move v2, v1

    goto :goto_4f

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    if-nez v2, :cond_58

    move v2, v1

    goto :goto_5c

    :cond_58
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    if-nez v2, :cond_65

    move v2, v1

    goto :goto_69

    :cond_65
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_69
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    if-nez v2, :cond_72

    move v2, v1

    goto :goto_76

    :cond_72
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_76
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    if-nez v2, :cond_7f

    move v2, v1

    goto :goto_83

    :cond_7f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_83
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    const/16 v4, 0x1f

    invoke-static {v2, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    if-eqz v2, :cond_93

    move v2, v3

    :cond_93
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    if-nez v2, :cond_9c

    move v2, v1

    goto :goto_a0

    :cond_9c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    const/16 v4, 0x1f

    invoke-static {v2, v0, v4}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    if-nez v2, :cond_b0

    goto :goto_b4

    :cond_b0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    if-eqz p0, :cond_bc

    goto :goto_bd

    :cond_bc
    move v3, p0

    :goto_bd
    add-int/2addr v0, v3

    return v0
.end method

.method public final isMilestone()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    return p0
.end method

.method public final isRequestShowPanel()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCancelPanelActionConfig(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-void
.end method

.method public final setControlAction(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    return-void
.end method

.method public final setDataSourcePkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    return-void
.end method

.method public final setExtensibleActionMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    return-void
.end method

.method public final setFocusTimestamp(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public final setGrade(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    return-void
.end method

.method public final setLockScreenShowHostMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    return-void
.end method

.method public final setMilestone(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    return-void
.end method

.method public final setNotificationIdList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setPanelActionConfigMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    return-void
.end method

.method public final setRemindLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    return-void
.end method

.method public final setRequestHideStatusBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    return-void
.end method

.method public final setRequestShowPanel(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    return-void
.end method

.method public final setShouldFocus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    return-void
.end method

.method public final setShouldShow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    return-void
.end method

.method public final setShowHostMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    iget-object v3, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-boolean v4, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    iget-object v5, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iget-object v7, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    iget-object v8, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    iget-object v9, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    iget-object v11, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->controlAction:Ljava/lang/Integer;

    iget v12, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->remindLevel:I

    iget-boolean v13, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldFocus:Z

    iget-object v14, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->focusTimestamp:Ljava/lang/Long;

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->pageId:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->extensibleActionMap:Ljava/util/Map;

    iget-boolean v0, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->shouldShow:Z

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "NewSeedlingCardOptions(dataSourcePkgName="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMilestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRequestShowPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestHideStatusBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", grade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showHostMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lockScreenShowHostMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancelPanelActionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", panelActionConfigMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controlAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remindLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focusTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extensibleActionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
