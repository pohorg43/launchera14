.class public Lcom/android/launcher3/folder/PreviewItemManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CURRENT_PAGE_ITEMS_TRANS_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/folder/PreviewItemManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field public static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final ITEM_SLIDE_IN_OUT_DISTANCE_PX:I = 0x190

.field private static final MAX_ALPHA:I = 0xff

.field private static final SLIDE_IN_FIRST_PAGE_ANIMATION_DURATION:I = 0x12c

.field private static final SLIDE_IN_FIRST_PAGE_ANIMATION_DURATION_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PreviewItemManager"


# instance fields
.field private final mClipThreshold:F

.field public final mContext:Landroid/content/Context;

.field private mCurrentPageItemsTransX:F

.field public mCurrentPageParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field public mFirstPageParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field public mForceRecompute:Z

.field public final mIcon:Lcom/android/launcher3/folder/FolderIcon;

.field public final mIconSize:I

.field public mIntrinsicIconSize:F

.field public mPrevTopPadding:I

.field public mReferenceDrawable:Landroid/graphics/drawable/Drawable;

.field private mShouldSlideInFirstPage:Z

.field public mTotalWidth:I

.field private sItemSlideInOutDistancePx:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager$1;

    const-string v1, "currentPageItemsTransX"

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewItemManager;->CURRENT_PAGE_ITEMS_TRANS_X:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    const/16 v0, 0x9c

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->sItemSlideInOutDistancePx:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mClipThreshold:F

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/folder/PreviewItemManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/folder/PreviewItemManager;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    return p1
.end method

.method private maskFolderIcons(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    instance-of p0, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz p0, :cond_12

    check-cast p1, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 p0, 0xff

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Lcom/android/common/util/IconUtils;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_19

    :cond_12
    instance-of p0, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p0, :cond_19

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_19
    :goto_19
    return-void
.end method

.method private setBadgeDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V
    .registers 13

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_119

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isAppInWhiteList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    move v4, v2

    goto :goto_27

    :cond_26
    move v4, v3

    :goto_27
    iget-object v5, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v5, :cond_100

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v5, :cond_100

    iget-object v5, v5, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v5, :cond_100

    iget v5, v5, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    :goto_3d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v5, "PreviewItemManager"

    if-eqz v3, :cond_7a

    const-string v3, "Folder tittle is : "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isWorkFolder: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " applyHighTempProtectedState: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isHighTempProtectedEnable: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isEnableHighTempProtected: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Folder"

    invoke-static {v3, v4, v0, v5}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_7a
    if-nez v2, :cond_100

    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c0

    instance-of v2, v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_c0

    move-object v2, v0

    check-cast v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_c0

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXScalar(Landroid/content/res/Resources;)F

    move-result v3

    sget-object v6, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    invoke-virtual {v6}, Lcom/android/common/util/CacheUtils;->getCloneAppDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/high16 v7, 0x3f800000  # 1.0f

    div-float/2addr v7, v3

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v9, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v3, v8, v9}, Lcom/android/common/util/IconUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_c0
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportTTSatelliteDevice()Z

    move-result v2

    if-eqz v2, :cond_100

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v2, :cond_100

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v2, :cond_100

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_100

    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->getInstance()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/model/SatelliteStateManage;->isDisplaySatelliteBadge()Z

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_ea

    const-string/jumbo v3, "setDrawable isDisplaySatelliteBadge = "

    invoke-static {v3, v2, v5}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_ea
    if-eqz v2, :cond_fa

    sget-object v2, Lcom/android/common/util/SatelliteUtils;->INSTANCE:Lcom/android/common/util/SatelliteUtils;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/common/util/SatelliteUtils;->satelliteBadgeDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_100

    :cond_fa
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_100
    :goto_100
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_10e

    if-nez v1, :cond_10e

    iget-object p1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->maskFolderIcons(Landroid/graphics/drawable/Drawable;)V

    goto :goto_119

    :cond_10e
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p0

    iget-object p2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, p2, p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->updateTempProtectedDrawableState(ZLandroid/graphics/drawable/Drawable;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_119
    :goto_119
    return-void
.end method

.method private updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;III)V
    .registers 15

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    new-instance p2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    const/16 v7, 0x230

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    iget-object p0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz p0, :cond_21

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z

    move-result p0

    if-nez p0, :cond_21

    iget-object p0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    :cond_21
    iput-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    return-void
.end method


# virtual methods
.method public buildParamsForPage(ILjava/util/ArrayList;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_17
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_17

    :cond_2b
    :goto_2b
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_3f

    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3f
    if-nez v10, :cond_46

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4c

    :cond_46
    instance-of v0, v9, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v0

    :goto_4c
    move v8, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_4f
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_b7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v9, v6, v0, v12}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    if-nez v12, :cond_7e

    iget-object v0, v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    :cond_6e
    invoke-virtual {v9, v7, v8, v6, v10}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_79

    iget-object v0, v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    :cond_79
    move/from16 v18, v7

    move/from16 v16, v8

    goto :goto_ae

    :cond_7e
    new-instance v5, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    const/16 v16, 0x230

    const/16 v17, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v15

    move-object v9, v5

    move v5, v7

    move-object v10, v6

    move v6, v8

    move/from16 v18, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    iget-object v0, v10, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_a9

    invoke-virtual {v0, v9}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_ae

    :cond_a4
    iget-object v0, v10, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    :cond_a9
    iput-object v9, v10, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    :goto_ae
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v8, v16

    goto :goto_4f

    :cond_b7
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public computePreviewDrawingParams(II)V
    .registers 11

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    if-ne v0, p2, :cond_15

    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    if-eq v0, v1, :cond_8c

    :cond_15
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    instance-of p2, v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    if-eqz p2, :cond_44

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, v4, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/folder/OplusPreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V

    goto :goto_55

    :cond_44
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, v3, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    :goto_55
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    instance-of v0, p2, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    if-eqz v0, :cond_77

    check-cast p2, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    goto :goto_88

    :cond_77
    iget-object v0, p1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->init(IFZ)V

    :goto_88
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    :cond_8c
    return-void
.end method

.method public computePreviewDrawingParamsColor(I)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    if-nez v1, :cond_23

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_23

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    if-ne v1, p1, :cond_23

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    if-eq v1, v2, :cond_c1

    :cond_23
    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    if-eqz v1, :cond_59

    check-cast v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v4, v5, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v7

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/folder/OplusPreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getScaleSize()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->sItemSlideInOutDistancePx:I

    goto :goto_6a

    :cond_59
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, v3, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    :goto_6a
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, p1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    check-cast v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, v1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_a8

    check-cast p1, Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz p1, :cond_a8

    const/4 p1, 0x1

    goto :goto_a9

    :cond_a8
    move p1, v1

    :goto_a9
    if-nez p1, :cond_c1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_c1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p1

    if-nez p1, :cond_c1

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->reSetFolderIconDrawable()V

    :cond_c1
    return-void
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->getFinalIconParams(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    iget v2, v1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    instance-of v2, v1, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    if-eqz v2, :cond_35

    if-eqz v0, :cond_35

    check-cast v1, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    :cond_35
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p0

    return-object p0
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p0

    return-object p0
.end method

.method public createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_19

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    const/4 v0, 0x0

    return-object v0

    :cond_19
    if-eqz p1, :cond_31

    new-instance v9, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0xc8

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    goto :goto_46

    :cond_31
    new-instance v9, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x15e

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    :goto_46
    return-object v9
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->isForbidDrawPageItems()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    check-cast v1, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mShouldSlideInFirstPage:Z

    if-eqz v2, :cond_56

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    instance-of v1, v1, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    check-cast v1, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewContentClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_4a
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FLjava/lang/Boolean;)V

    const/high16 v1, -0x3c380000  # -400.0f

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    add-float/2addr v1, v2

    :cond_56
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FLjava/lang/Boolean;)V

    iget-boolean p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mShouldSlideInFirstPage:Z

    if-eqz p2, :cond_6a

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p2, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    instance-of p2, p2, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    if-eqz p2, :cond_6a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6a
    iget p2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    check-cast p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result p0

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FLjava/lang/Boolean;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;F",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_28

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-boolean v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-nez v3, :cond_1a

    invoke-virtual {p0, p1, v2, p4}, Lcom/android/launcher3/folder/PreviewItemManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Ljava/lang/Boolean;)V

    goto :goto_25

    :cond_1a
    if-eqz v3, :cond_25

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0, p1, v2, p4}, Lcom/android/launcher3/folder/PreviewItemManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Ljava/lang/Boolean;)V

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_28
    neg-float p0, p3

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Ljava/lang/Boolean;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_109

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    instance-of v3, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6d

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    const/high16 v7, 0x437f0000  # 255.0f

    if-eqz v6, :cond_54

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v6, v8, :cond_54

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v8, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderIcon;->getFolderIconAlpha()F

    move-result v8

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_bc

    :cond_54
    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderIcon;->getFolderIconAlpha()F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_bc

    :cond_60
    int-to-float v6, v3

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getFolderIconAlpha()F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_bc

    :cond_6d
    instance-of v3, p2, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz v3, :cond_bb

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_bb

    move-object v3, p2

    check-cast v3, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object v6

    if-eqz v6, :cond_bb

    invoke-virtual {v3}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v6

    if-eqz v6, :cond_bb

    invoke-virtual {v3}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    const/16 v7, 0xff

    if-eqz v6, :cond_b5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v6, v8, :cond_b5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v3, v7}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_bb

    :cond_b5
    invoke-virtual {v3, v7}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    :cond_bb
    :goto_bb
    move v3, v4

    :goto_bc
    iget v6, v1, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    invoke-virtual {p1, v6, p0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eq v3, v4, :cond_109

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_106

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    if-eqz p0, :cond_106

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-eq p0, p3, :cond_106

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_109

    :cond_106
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_109
    :goto_109
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public forceRecomputePreviewDrawingParams()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParamsColor(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    :cond_13
    return-void
.end method

.method public getCurrentPageParams()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFinalIconParams(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    cmpl-float v2, v1, v2

    if-nez v2, :cond_1c

    move v1, v0

    :cond_1c
    div-float v1, v0, v1

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    if-nez p1, :cond_30

    new-instance p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p1, p0, p0, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    :cond_30
    invoke-virtual {p1, p0, p0, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    return-object p1
.end method

.method public getFirstPageDrawingParams()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v1, ""

    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object v1
.end method

.method public getIntrinsicIconSize()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    return p0
.end method

.method public getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p2  # I
        .annotation build Lcom/android/launcher3/icons/BitmapInfo$DrawableCreationFlags;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_61

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/FancyIconKey;

    sget-object v3, Lcom/android/launcher/FancyIconKey$AppLocationType;->WORKSPACE:Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-direct {v2, p1, v3}, Lcom/android/launcher/FancyIconKey;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/FancyIconKey$AppLocationType;)V

    iget-object v3, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v3, v2}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIcon(Lcom/android/launcher/FancyIconKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "PreviewItemManager"

    if-nez v3, :cond_42

    const-string v3, "getNewIcon()  drawable is null."

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-interface {v3, v0, v4, v4}, Lcom/android/launcher3/icons/IIconCacheExt;->loadFancyIconCache(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_47

    :cond_42
    const-string v0, "getNewIcon()  cache hit!!!"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    instance-of v0, v3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v0, :cond_5a

    move-object p0, v3

    check-cast p0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {p0}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResume()V

    invoke-interface {p0}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResumeThread()V

    iget-object p0, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p0, v3, v2}, Lcom/android/launcher3/icons/IIconCacheExt;->putFancyIcon(Landroid/graphics/drawable/Drawable;Lcom/android/launcher/FancyIconKey;)V

    return-object v3

    :cond_5a
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0

    :cond_61
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hidePreviewItem(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    if-eqz p0, :cond_29

    iput-boolean p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :cond_29
    return-void
.end method

.method public hidePreviewItems(IIZ)V
    .registers 6

    :goto_0
    if-gt p1, p2, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_35

    iput-boolean p3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_35

    iget-object v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_35

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    :cond_35
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_38
    return-void
.end method

.method public isForbidDrawPageItems()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLightOrSuperLightFolderAnim()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1a

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v7}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    goto :goto_27

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    :goto_27
    move-object v8, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0, v7, v8, v7}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    :cond_33
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_58
    move p3, v7

    :goto_59
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_88

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v3, -0x3

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_59

    :cond_88
    move p3, v7

    :goto_89
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_b2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_af

    if-eq p3, v3, :cond_af

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v0, p0

    move v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;III)V

    :cond_af
    add-int/lit8 p3, p3, 0x1

    goto :goto_89

    :cond_b2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move p2, v7

    :goto_bb
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_102

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v1

    if-lt v0, v1, :cond_e5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v7

    const/4 p1, 0x1

    aput-object p3, p0, p1

    const-string p1, "Can not put moveOutParams to list,i=%d,moveOut=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewItemManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_102

    :cond_e5
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v6, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v9

    const/4 v4, -0x2

    move-object v0, p0

    move-object v1, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updateTransitionParam(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;III)V

    invoke-virtual {v8, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_bb

    :cond_102
    :goto_102
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v7, p0, :cond_120

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz p0, :cond_11d

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    :cond_11d
    add-int/lit8 v7, v7, 0x1

    goto :goto_102

    :cond_120
    return-void
.end method

.method public onFolderClose(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mShouldSlideInFirstPage:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    sget-object p1, Lcom/android/launcher3/folder/PreviewItemManager;->CURRENT_PAGE_ITEMS_TRANS_X:Landroid/util/FloatProperty;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_38

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewItemManager$2;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_36
    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x43c80000  # 400.0f
    .end array-data
.end method

.method public onParamsChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParamsColor(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public prepareCreateAnimation(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParams(II)V

    return-void
.end method

.method public recomputePreviewDrawingParams()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-gtz v0, :cond_1a

    const-string/jumbo v1, "recomputePreviewDrawingParams: totalSize = "

    const-string v2, "PreviewItemManager"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParamsColor(I)V

    :cond_23
    return-void
.end method

.method public setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 18

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_ad

    const/4 v0, 0x0

    iget-object v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-ne v1, v8, :cond_1d

    iget-object v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_1d

    check-cast v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getCoverDrawable()Lcom/oplus/icons/AbstractCoverDrawable;

    move-result-object v0

    :cond_1d
    instance-of v1, v0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    if-nez v1, :cond_a0

    iget-object v1, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getDownloadCache()Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    move-result-object v11

    if-eqz v11, :cond_36

    invoke-virtual {v11, v8}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->getDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    if-eqz v1, :cond_36

    invoke-virtual {v0, p0}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->updateInvalidateDelegate(Lcom/android/launcher3/folder/PreviewItemManager;)V

    :cond_36
    if-nez v0, :cond_69

    instance-of v12, v6, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    if-eqz v12, :cond_4b

    new-instance v13, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    iget-object v1, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    iget v3, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    const/4 v5, 0x1

    move-object v0, v13

    move-object/from16 v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V

    goto :goto_59

    :cond_4b
    new-instance v13, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    iget-object v1, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    iget v3, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V

    :goto_59
    if-eqz v11, :cond_5e

    invoke-virtual {v11, v8, v13}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->addDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/download/DownloadProgressPreviewDrawable;)V

    :cond_5e
    if-eqz v12, :cond_68

    move-object v0, v6

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    iget-object v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateSinglePageParam(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_68
    move-object v0, v13

    :cond_69
    iget-object v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-ne v2, v8, :cond_8c

    instance-of v2, v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_8c

    move-object v2, v1

    check-cast v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    if-eqz v2, :cond_8c

    iget-object v2, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    invoke-static {v2}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;->startDotAnim(Lcom/android/launcher/folder/download/view/RecommendDotDrawable;)V

    goto :goto_94

    :cond_8c
    iget-object v2, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eq v2, v8, :cond_94

    invoke-virtual {p0, v8, v10}, Lcom/android/launcher3/folder/PreviewItemManager;->getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_94
    :goto_94
    instance-of v2, v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_9e

    move-object v2, v1

    check-cast v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v2, v0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->setCoverDrawable(Lcom/oplus/icons/AbstractCoverDrawable;)V

    :cond_9e
    iput-object v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_a0
    check-cast v0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getInstallProgress()I

    move-result v1

    iget-boolean v2, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    xor-int/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->onInstallStateOrProgressChange(IZ)V

    goto :goto_f8

    :cond_ad
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p0, v8, v10}, Lcom/android/launcher3/folder/PreviewItemManager;->getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_f8

    :cond_ba
    iget-boolean v0, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    if-eqz v0, :cond_cd

    iget-object v0, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher/AppLimitedStartUpManager;->getLimitedDrawable(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_f8

    :cond_cd
    iget-boolean v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->skipGetDrawable:Z

    if-eqz v0, :cond_d5

    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f8

    :cond_d5
    invoke-virtual {p0, v8, v10}, Lcom/android/launcher3/folder/PreviewItemManager;->getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v8, v9}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v0

    if-eqz v0, :cond_f8

    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_f8

    new-instance v0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    iget-object v1, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->applyScaleAndOffset()V

    iget-object v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :cond_f8
    :goto_f8
    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_105

    const-string v0, "PreviewItemManager"

    const-string/jumbo v1, "p.drawable is null."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_105
    invoke-direct {p0, v8, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->setBadgeDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-virtual {v0, v9, v9, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object v8, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v0, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_121

    instance-of v1, v7, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-nez v1, :cond_121

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, v8}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    :cond_121
    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, v6, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_4a

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getDownloadCache()Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->getDownloadDrawables()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->removeDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    goto :goto_1a

    :cond_4a
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v4, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v1, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move v1, v3

    goto :goto_51

    :cond_6d
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_73
    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v4, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    iget-object v1, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move v1, v3

    goto :goto_73

    :cond_8e
    if-eqz v1, :cond_95

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_95
    return-void
.end method

.method public updatePreviewItems(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v0
.end method
