.class public Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo$LauncherAppWidgetProviderInfoWrapper;
    }
.end annotation


# static fields
.field public static final CLS_CUSTOM_WIDGET_PREFIX:Ljava/lang/String; = "#custom-widget-"


# instance fields
.field private final mExt:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

.field private mIsMinSizeFulfilled:Z

.field private mWrapper:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoWrapper;

.field public maxSpanX:I

.field public maxSpanY:I

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    const-class v0, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    invoke-static {v0}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mExt:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    const-class p1, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    invoke-static {p1}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mExt:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    return-void
.end method

.method public static synthetic access$102(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    return p1
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    goto :goto_1a

    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_1a
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-object p1
.end method

.method private getSpanX(Landroid/graphics/Rect;IIF)I
    .registers 5

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p0

    add-int/2addr p2, p3

    int-to-float p0, p2

    int-to-float p1, p3

    add-float/2addr p4, p1

    div-float/2addr p0, p4

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getSpanY(Landroid/graphics/Rect;IIF)I
    .registers 5

    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    add-int/2addr p2, p3

    int-to-float p0, p2

    int-to-float p1, p3

    add-float/2addr p4, p1

    div-float/2addr p0, p4

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getComponent()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinSpans()Landroid/graphics/Point;
    .registers 5

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, -0x1

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_d

    :cond_c
    move v2, v3

    :goto_d
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    iget v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    :cond_13
    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .registers 1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetFeatures()I
    .registers 2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_7

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public getWrapper()Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoWrapper;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mWrapper:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoWrapper;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo$LauncherAppWidgetProviderInfoWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo$LauncherAppWidgetProviderInfoWrapper;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo$1;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mWrapper:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoWrapper;

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mWrapper:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoWrapper;

    return-object p0
.end method

.method public initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 14

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p1, v4, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    sget-object v5, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getBestDeviceProfile(Z)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mExt:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    invoke-interface {v7, v4, p1, v5}, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;->initSpansBeforeGetCellSize(Landroid/graphics/Point;Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;)V

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_39

    :cond_36
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_39
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mExt:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    invoke-interface {p1, p0}, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;->checkMinResizeWidthHeightIsValid(Landroid/appwidget/AppWidgetProviderInfo;)V

    if-eqz v5, :cond_b2

    iget p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v2, v5, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-direct {p0, v3, p1, v2, v7}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v7, v5, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-direct {p0, v3, v2, v7, v8}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-boolean v7, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v7, :cond_8c

    iget v7, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    if-lez v7, :cond_79

    iget-object v8, v5, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-direct {p0, v3, v7, v8, v9}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_79
    iget v7, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    if-lez v7, :cond_8c

    iget-object v8, v5, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-direct {p0, v3, v7, v8, v9}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8c
    iget v7, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v8, v5, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-direct {p0, v3, v7, v8, v9}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v8, v5, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v10, v6

    move v6, p1

    move p1, v10

    goto :goto_b5

    :cond_b2
    move p1, v6

    move v2, p1

    move v7, v2

    :goto_b5
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_cf

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    if-lt v3, v6, :cond_cf

    if-gt v3, v0, :cond_cf

    iget v4, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    if-lt v4, v2, :cond_cf

    if-gt v4, v1, :cond_cf

    move v7, v3

    move p1, v4

    :cond_cf
    iget v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_ef

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_db

    goto :goto_f5

    :cond_db
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    goto :goto_f5

    :cond_e8
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    goto :goto_f5

    :cond_ef
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    :goto_f5
    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mExt:Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;

    invoke-interface {v0, p0, p2}, Lcom/android/launcher3/widget/ILauncherAppWidgetProviderInfoExt;->initSpans(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    return-void
.end method

.method public isConfigurationOptional()Z
    .registers 2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isCustomWidget()Z
    .registers 2

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#custom-widget-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMinSizeFulfilled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    return p0
.end method

.method public isReconfigurable()Z
    .registers 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method
