.class public Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CATEGORY_BOTTOM_DIVIDER_KEY:Ljava/lang/String; = "category_bottom_divider"

.field private static final CATEGORY_LOCKED_APPS_KEY:Ljava/lang/String; = "category_locked_apps"

.field private static final CATEGORY_POWER_SAVE_MODE_NOTICE_KEY:Ljava/lang/String; = "category_power_save_mode_notice"

.field private static final CATEGORY_UNLOCK_APPS_KEY:Ljava/lang/String; = "category_unlock_apps"

.field private static final MEMORY_INFO_KEY:Ljava/lang/String; = "display_memory_information_recent_task"

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field public static final PHONE_MANAGER_ENTRANCE_KEY:Ljava/lang/String; = "display_phone_manager_entrance"

.field private static final PREFERENCE_POWER_SAVE_MODE_NOTICE:Ljava/lang/String; = "preference_power_save_mode_notice"

.field private static final RATIO_OF_HORIZONTAL_PADDING_TO_HEIGHT:F = 0.21428572f

.field private static final TAG:Ljava/lang/String; = "LockSettingFragment"


# instance fields
.field public mBottomDivider:Landroidx/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mIsPowerSavingModleOn:Z

.field private mLoadingView:Landroid/widget/LinearLayout;

.field private mLoadingViewVisible:Z

.field public mLockedCategory:Landroidx/preference/PreferenceCategory;

.field private mLockedCategoryVisible:Z

.field private mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private mPreferenceTitleCount:I

.field private mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScroller:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

.field private mSuperLockTagDrawable:Landroid/graphics/drawable/Drawable;

.field public mUnLockedCategory:Landroidx/preference/PreferenceCategory;

.field private mUnLockedCategoryVisible:Z

.field private packageEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mBottomDivider:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x2

    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPreferenceTitleCount:I

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingViewVisible:Z

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->packageEntries:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mSuperLockTagDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->needShowSuperLockTag(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;)Landroid/graphics/drawable/Drawable;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->getSuperLockTagDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private generateSwitchPreference(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment$1;-><init>(Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSuperLockTagDrawable()Landroid/graphics/drawable/Drawable;
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseRequireInsteadOfGet"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mSuperLockTagDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const v3, 0x7f070ed2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    const v3, 0x7f0600a8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/util/Themes;->getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    add-float/2addr v7, v9

    add-float/2addr v7, v8

    const v8, 0x3e5b6db7

    mul-float/2addr v8, v7

    add-float/2addr v3, v8

    add-float/2addr v3, v8

    float-to-int v10, v3

    float-to-int v11, v7

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v13, 0x7f0600a7

    invoke-virtual {v0, v13, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9, v9, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v11, v4, v8, v8, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    iget v4, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v11, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mSuperLockTagDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private needShowSuperLockTag(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Lcom/oplus/quickstep/applock/AppLockModel;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v1

    aget-object v2, p0, v0

    aget-object p0, p0, p1

    invoke-virtual {v1, v2, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppAllowSuperLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    move p1, v0

    :goto_18
    return p1
.end method

.method private setAppsList(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    if-nez v0, :cond_33

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->setAppEntries(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->createSectionInfo()V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setAlphabeticalAppsList(Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setNeedShowMessage(Z)V

    :cond_33
    return-void
.end method


# virtual methods
.method public createNewSwitchPreference(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    const-string p0, "LockSettingFragment"

    const-string p1, "createNewSwitchPreference -- mContext is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->generateSwitchPreference(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUISwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setBorderRectRadius(I)V

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method public enterPowerSaveMode(Z)V
    .registers 4

    const-string v0, "enterPowerSaveMode isInPowerSavingModel : "

    const-string v1, "LockSettingFragment"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mIsPowerSavingModleOn:Z

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_23

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string p1, "preference_power_save_mode_notice"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;

    if-eqz p0, :cond_23

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->setDrawableAnimation(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->playAnimation()V

    :cond_23
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    const v0, 0x7f120432

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initPreference(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->packageEntries:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->clearPackageEntry()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_5f

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    const-string v3, "LockSettingFragment"

    if-eqz v2, :cond_57

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v4, :cond_49

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    iget-object v5, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v5}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->createNewSwitchPreference(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/coui/appcompat/preference/COUISwitchPreference;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v4, :cond_34

    const-string v4, "initPreference -- create NULL Preference for package: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_34
    invoke-virtual {v2}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_49

    :cond_42
    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_49
    :goto_49
    iget-object v3, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->updatePreference(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v3, v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->addPackageEntry(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V

    goto :goto_5c

    :cond_57
    const-string v2, "initPreference, packageEntry is null."

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_5f
    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mIsPowerSavingModleOn:Z

    if-nez v0, :cond_66

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->setAppsList(Ljava/util/ArrayList;)V

    :cond_66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string p1, "category_locked_apps"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1b
    const-string p1, "category_unlock_apps"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2a
    const-string p1, "category_bottom_divider"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mBottomDivider:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_39

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_39
    const-string p1, "category_power_save_mode_notice"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz p1, :cond_48

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_48
    const-string p1, "display_memory_information_recent_task"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_57

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_57
    new-instance p1, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;)V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategoryVisible:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategoryVisible:Z

    const-string p1, "display_phone_manager_entrance"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_87

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->shouldShowPhoneManagerCleanSwitch()Z

    move-result v1

    if-nez v1, :cond_7c

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_87

    :cond_7c
    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result p1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_87
    :goto_87
    return-void
.end method

.method public onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    move-object v0, v2

    goto :goto_f

    :cond_b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    move-object v3, v2

    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    move-object v0, v2

    :cond_2f
    new-instance v1, Lcom/oplus/quickstep/locksetting/ui/LockSettingPreferenceGroupAdapter;

    iget-boolean v2, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/oplus/quickstep/locksetting/ui/LockSettingPreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->mAdapter:Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

    return-object v1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const-string p1, "LockSettingFragment"

    const-string p2, "onCreatePreferences"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f150001

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a03a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingView:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    iget-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object p3, Lcom/oplus/quickstep/locksetting/ui/a;->a:Lcom/oplus/quickstep/locksetting/ui/a;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    if-nez p2, :cond_2d

    return-object p3

    :cond_2d
    invoke-static {p2, p3}, Lcom/android/common/util/IconUtils;->getDrawableForListIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->setMemoryInfoSwitch()V

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "display_memory_information_recent_task"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->saveMemoryInfoSwitch(Z)Z

    move-result p0

    return p0

    :cond_1f
    const-string v0, "display_phone_manager_entrance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->savePhoneManagerEntranceSwitch(Z)Z

    move-result p0

    return p0

    :cond_2e
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->updateEntry(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->setMemoryInfoSwitch()V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->setPhoneManagerEntranceSwitch()V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->updateInterestedApps()V

    return-void
.end method

.method public removePreference(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method public showBottomDivider(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mBottomDivider:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public showLoadingView(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingViewVisible:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingViewVisible:Z

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    const/16 p1, 0x8

    :goto_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method public showLockedCategory(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategoryVisible:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategoryVisible:Z

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_b
    return-void
.end method

.method public showUnLockedCategory(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategoryVisible:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategoryVisible:Z

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_b
    return-void
.end method

.method public updateMemoryInfoSwitch(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public updatePhoneManagerEntranceSwitch(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method public updatePreference(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V
    .registers 4

    iget-object v0, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object p1, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    return-void
.end method

.method public updatePreferenceIcon(Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_17

    :cond_f
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    :goto_17
    if-eqz p0, :cond_1c

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    return-void
.end method

.method public updatePreferenceTitleCount(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPreferenceTitleCount:I

    return-void
.end method
