.class public Lcom/android/launcher/UiConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final GRID_NUM1:I = 0x1

.field public static final GRID_X_NUM2:I = 0x2

.field public static final GRID_X_NUM3:I = 0x3

.field public static final GRID_X_NUM4:I = 0x4

.field public static final GRID_X_NUM5:I = 0x5

.field public static final GRID_X_NUM6:I = 0x6

.field public static final GRID_Y_NUM1:I = 0x1

.field public static final GRID_Y_NUM4:I = 0x4

.field public static final GRID_Y_NUM5:I = 0x5

.field public static final GRID_Y_NUM6:I = 0x6

.field private static final LAYOUT_NAME_4X3:Ljava/lang/String; = "4_by_3"

.field private static final LAYOUT_NAME_4X4:Ljava/lang/String; = "4_by_4"

.field private static final LAYOUT_NAME_4X5:Ljava/lang/String; = "4_by_5"

.field private static final LAYOUT_NAME_4X6:Ljava/lang/String; = "4_by_6"

.field private static final LAYOUT_NAME_5X4:Ljava/lang/String; = "5_by_4"

.field private static final LAYOUT_NAME_5X5:Ljava/lang/String; = "5_by_5"

.field private static final LAYOUT_NAME_6X3:Ljava/lang/String; = "6_by_3"

.field private static final LAYOUT_NAME_6X4:Ljava/lang/String; = "6_by_4"

.field private static final LAYOUT_NAME_6X5:Ljava/lang/String; = "6_by_5"

.field public static final PROJECT_20085:Ljava/lang/String; = "20085"

.field public static final PROJECT_22001:Ljava/lang/String; = "22001"

.field public static final PROJECT_22003:Ljava/lang/String; = "22003"

.field public static final PROJECT_22111:Ljava/lang/String; = "22111"

.field public static final PROJECT_22203:Ljava/lang/String; = "22203"

.field public static final PROJECT_22899:Ljava/lang/String; = "22899"

.field public static final PROJECT_23021:Ljava/lang/String; = "23021"

.field public static final PROJECT_23061:Ljava/lang/String; = "23061"

.field public static final PROJECT_23231:Ljava/lang/String; = "23231"

.field public static final PROJECT_23251:Ljava/lang/String; = "23251"

.field public static final PROJECT_23619:Ljava/lang/String; = "23619"

.field public static final PROJECT_23625:Ljava/lang/String; = "23625"

.field public static final PROJECT_23715:Ljava/lang/String; = "23715"

.field public static final PROJECT_23716:Ljava/lang/String; = "23716"

.field public static final PROJECT_23726:Ljava/lang/String; = "23726"

.field public static final PROJECT_24682:Ljava/lang/String; = "24682"

.field public static final PROJECT_ID:Ljava/lang/String;

.field public static final SCALE_BLUEY:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "UiConfig"

.field private static sCols:I

.field private static sIsUseDefaultLayoutXY:Z

.field private static sRows:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/OplusPropertyList;->SEPARATE_SOFT:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lcom/android/launcher/UiConfig;->sCols:I

    const/4 v0, 0x6

    sput v0, Lcom/android/launcher/UiConfig;->sRows:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/UiConfig;->sIsUseDefaultLayoutXY:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCols()I
    .registers 1

    sget v0, Lcom/android/launcher/UiConfig;->sCols:I

    return v0
.end method

.method public static getCurDrawerAndStandardLayoutSettings(Landroid/content/Context;)[I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/UiConfig;->getRealCurDrawerAndStandardLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->updateGridIfNeeded(Landroid/content/Context;[I)V

    return-object v0
.end method

.method public static getCurSimpleLayoutSettings()[I
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public static getCurrentLayoutSettings(Landroid/content/Context;)[I
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCurSimpleLayoutSettings()[I

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lcom/android/launcher/UiConfig;->getCurDrawerAndStandardLayoutSettings(Landroid/content/Context;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultLayout()[I
    .registers 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->getGridLayoutXY()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/layout/CustomLayoutHelper;->setOnGridLayoutXYChangedListener()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "UiConfig"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_47

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "grid layout from app feature x:y = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v4}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v2

    if-ne v3, v0, :cond_47

    :try_start_30
    aget-object v0, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v6

    aget-object v0, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v5
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_40} :catch_41

    return-object v1

    :catch_41
    const-string/jumbo v0, "parsing grid feature error. please check it."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    sget-boolean v0, Lcom/android/launcher/UiConfig;->sIsUseDefaultLayoutXY:Z

    if-eqz v0, :cond_69

    sget v0, Lcom/android/launcher/UiConfig;->sCols:I

    aput v0, v1, v6

    sget v0, Lcom/android/launcher/UiConfig;->sRows:I

    aput v0, v1, v5

    const-string v0, "The xy value written in the default layout -- x = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/launcher/UiConfig;->sCols:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- y = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/UiConfig;->sRows:I

    invoke-static {v0, v2, v4}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object v1

    :cond_69
    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout4x4()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_78

    aput v3, v1, v6

    aput v3, v1, v5

    goto/16 :goto_143

    :cond_78
    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v2

    const/4 v7, 0x5

    if-eqz v2, :cond_85

    aput v3, v1, v6

    aput v7, v1, v5

    goto/16 :goto_143

    :cond_85
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const-string v8, "isTablet"

    const/4 v9, 0x6

    if-eqz v2, :cond_bf

    const-string v0, "isRLMDevice"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_aa

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-static {v4, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aput v9, v1, v6

    aput v3, v1, v5

    goto/16 :goto_143

    :cond_a4
    aput v7, v1, v6

    aput v9, v1, v5

    goto/16 :goto_143

    :cond_aa
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-static {v4, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aput v9, v1, v6

    aput v3, v1, v5

    goto/16 :goto_143

    :cond_b9
    aput v3, v1, v6

    aput v9, v1, v5

    goto/16 :goto_143

    :cond_bf
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v2, :cond_e9

    const-string v0, "isOPDevice"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_e4

    const-string v0, "isExp"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-static {v4, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aput v9, v1, v6

    aput v7, v1, v5

    goto :goto_143

    :cond_df
    aput v3, v1, v6

    aput v9, v1, v5

    goto :goto_143

    :cond_e4
    aput v3, v1, v6

    aput v9, v1, v5

    goto :goto_143

    :cond_e9
    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout6x5()Z

    move-result v0

    if-eqz v0, :cond_f4

    aput v7, v1, v6

    aput v9, v1, v5

    goto :goto_143

    :cond_f4
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_129

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v0

    if-nez v0, :cond_124

    sget v0, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_11f

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v2, "20085"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11f

    const-string v2, "22001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    aput v3, v1, v6

    aput v9, v1, v5

    goto :goto_143

    :cond_11f
    aput v3, v1, v6

    aput v7, v1, v5

    goto :goto_143

    :cond_124
    aput v7, v1, v6

    aput v3, v1, v5

    goto :goto_143

    :cond_129
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v0

    if-eqz v0, :cond_13a

    aput v9, v1, v6

    aput v3, v1, v5

    goto :goto_143

    :cond_13a
    aput v9, v1, v6

    aput v7, v1, v5

    goto :goto_143

    :cond_13f
    aput v3, v1, v6

    aput v9, v1, v5

    :goto_143
    return-object v1
.end method

.method public static getExpandedXYForRestore(II)Landroid/graphics/Point;
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    invoke-static {}, Lcom/android/launcher/UiConfig;->getSupportLayout()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt p1, v6, :cond_10

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt p0, v6, :cond_10

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne p0, v6, :cond_4f

    if-eqz v3, :cond_47

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v3, :cond_4f

    :cond_47
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_4f
    aget v6, v0, v2

    if-eqz v6, :cond_5f

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v7, v0, v2

    if-ge v6, v7, :cond_10

    :cond_5f
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v5

    goto :goto_10

    :cond_74
    if-lez v3, :cond_7c

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    :cond_7c
    aget v1, v0, v2

    if-lez v1, :cond_8a

    new-instance p0, Landroid/graphics/Point;

    aget p1, v0, v2

    aget v0, v0, v5

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_8a
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :array_90
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getGridName(II)Ljava/lang/String;
    .registers 7

    invoke-static {p0, p1}, Lcom/android/launcher/UiConfig;->supportLayout(II)Z

    move-result v0

    const-string v1, "_by_"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v0

    const-string v2, "getGridName, not supported layout, use default. x = "

    const-string v3, ", y = "

    const-string v4, ", dX = "

    invoke-static {v2, p0, v3, p1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x0

    aget v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dy = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "UiConfig"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLayoutFoldScreen()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_2f

    sget-object v1, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v3, "20085"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "22001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_2f
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    :goto_63
    return-object v0
.end method

.method private static getLayoutNormal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isUseOldLayout()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_52

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_52
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_60
    return-object v0
.end method

.method private static getLayoutTablet()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1b

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_1b
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    return-object v0
.end method

.method private static getRealCurDrawerAndStandardLayoutSettings(Landroid/content/Context;)[I
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    aget v5, v0, v4

    const-string v6, "layout_cellcount_x"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v4

    aget v0, v0, v3

    const-string v5, "layout_cellcount_y"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    aput v0, v1, v3

    goto :goto_31

    :cond_29
    aget v2, v0, v4

    aput v2, v1, v4

    aget v0, v0, v3

    aput v0, v1, v3

    :goto_31
    aget v0, v1, v4

    if-eqz v0, :cond_39

    aget v0, v1, v3

    if-nez v0, :cond_44

    :cond_39
    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v1

    aget v0, v1, v4

    aget v2, v1, v3

    invoke-static {p0, v0, v2}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutInfo(Landroid/content/Context;II)V

    :cond_44
    return-object v1

    nop

    :array_46
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getRows()I
    .registers 1

    sget v0, Lcom/android/launcher/UiConfig;->sRows:I

    return v0
.end method

.method private static getSupportLayout()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/launcher/UiConfig;->getLayoutFoldScreen()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/launcher/UiConfig;->getLayoutTablet()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-static {}, Lcom/android/launcher/UiConfig;->getLayoutNormal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getSupportLayoutSwitchList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isLayout4x4()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "4_by_4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_83

    :cond_14
    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v2

    const-string v3, "5_by_4"

    if-eqz v2, :cond_20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_20
    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isLayout6x5()Z

    move-result v1

    const-string v2, "6_by_4"

    const-string v4, "6_by_5"

    if-eqz v1, :cond_31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_31
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_6b

    sget v1, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_57

    sget-object v1, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v2, "20085"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "22001"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "4_by_6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_57
    const-string v1, "4_by_5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "5_by_5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_6b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_7d

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_79

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_7d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    :goto_83
    return-object v0
.end method

.method public static isAmber()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "23619"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "23625"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "24682"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "23726"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "23715"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "23716"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    return v0
.end method

.method public static isBenz()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "23061"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBurberry()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "23231"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCanExpandXYForRestore(IIII)Z
    .registers 4

    if-gt p0, p2, :cond_6

    if-gt p1, p3, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isHuahai()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "23021"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLayout4x4()Z
    .registers 1

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout4x4()Z

    move-result v0

    return v0
.end method

.method public static isLayout5x4()Z
    .registers 1

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v0

    return v0
.end method

.method public static isLayout6x4()Z
    .registers 2

    sget v0, Lcom/android/launcher/UiConfig;->sCols:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    sget v0, Lcom/android/launcher/UiConfig;->sRows:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isLayout6x5()Z
    .registers 2

    sget v0, Lcom/android/launcher/UiConfig;->sCols:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    sget v0, Lcom/android/launcher/UiConfig;->sRows:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isNotSupportSpringAnimation()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/UiConfig;->isSupreme()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/launcher/UiConfig;->isBurberry()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/launcher/UiConfig;->isHuahai()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static isPangu()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "22111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPeacock()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "20085"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportLayout(II)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher/UiConfig;->getSupportLayout()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    const/4 v2, -0x1

    if-ne p0, v2, :cond_21

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq p1, v3, :cond_41

    :cond_21
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p0, v3, :cond_2d

    if-eq p1, v2, :cond_41

    :cond_2d
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_8

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_8

    :cond_41
    const/4 p0, 0x1

    return p0

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupreme()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "23251"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTabletLightAnimation()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isWhiteSwan()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "22001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isXueying()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/UiConfig;->PROJECT_ID:Ljava/lang/String;

    const-string v1, "22003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "22203"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "22899"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

.method public static setColsAndRows(II)V
    .registers 2

    sput p0, Lcom/android/launcher/UiConfig;->sCols:I

    sput p1, Lcom/android/launcher/UiConfig;->sRows:I

    return-void
.end method

.method public static setDefaultColsAndRows(II)V
    .registers 2

    sput p0, Lcom/android/launcher/UiConfig;->sCols:I

    sput p1, Lcom/android/launcher/UiConfig;->sRows:I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher/UiConfig;->sIsUseDefaultLayoutXY:Z

    return-void
.end method

.method public static supportLayout(II)Z
    .registers 4

    invoke-static {}, Lcom/android/launcher/UiConfig;->getSupportLayoutSwitchList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "4_by_3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_by_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static supportLayout(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/android/launcher/UiConfig;->getSupportLayoutSwitchList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
