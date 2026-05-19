.class public Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;


# static fields
.field private static final POWER_SAVING_MODLE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LockSettingPresenter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private mIsPowerSavingModleOn:Z

.field private final mLockSettingModel:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

.field private final mLowPowerListener:Lcom/oplus/quickstep/common/IObserverListener;

.field private final mPackageEntryMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mLowPowerListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    new-instance p1, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-direct {p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mLockSettingModel:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    sget-object p1, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->isPowerSavingMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mIsPowerSavingModleOn:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mIsCancel:Z

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->lambda$loadIcon$1(Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mIsPowerSavingModleOn:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mIsPowerSavingModleOn:Z

    return p1
.end method

.method public static synthetic b(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->lambda$updateInterestedApps$0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPackageEntry(Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;)Lcom/oplus/quickstep/locksetting/contract/AppEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ")",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_25

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    iget-object v2, p2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    iget-object v3, v1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p2}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v2

    invoke-virtual {v1}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v3

    if-ne v2, v3, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method private isPowerSavingMode()Z
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mContext:Landroid/content/Context;

    const-string v1, "low_power"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private synthetic lambda$loadIcon$1(Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showLockedCategory(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {p1, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showUnLockedCategory(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {p1, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showBottomDivider(Z)V

    if-eqz p3, :cond_22

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {p0, p2, p3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->updatePreferenceIcon(Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V

    :cond_22
    return-void
.end method

.method private synthetic lambda$updateInterestedApps$0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7

    if-eqz p1, :cond_6c

    if-nez p2, :cond_5

    goto :goto_6c

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void

    :cond_1c
    const-string p2, "updateInterestedApps: packagelist.size = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "LockSettingPresenter"

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_39
    if-ge v1, p2, :cond_58

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    invoke-direct {p0, v0, v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->getPackageEntry(Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;)Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    move-result-object v3

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    iget-object v2, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-interface {v3, v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->removePreference(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    goto :goto_55

    :cond_51
    iget-object v2, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v2, v3, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_58
    iget-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p2, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->updatePreferenceTitleCount(Z)V

    iget-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {p2, v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->initPreference(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->loadIcon(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_6c
    :goto_6c
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method private loadIcon(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-boolean v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mIsCancel:Z

    if-eqz v1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    if-eqz v1, :cond_22

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mLockSettingModel:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    new-instance v3, Lcom/oplus/quickstep/locksetting/contract/c;

    invoke-direct {v3, p0, p1, v1}, Lcom/oplus/quickstep/locksetting/contract/c;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V

    iget-object v4, v1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    iget-object v1, v1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2, v3, v4, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->loadApplicationIcon(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method


# virtual methods
.method public addPackageEntry(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearPackageEntry()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    sget-object v0, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mLowPowerListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->removeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mIsCancel:Z

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mLockSettingModel:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->onDestroy()V

    return-void
.end method

.method public saveMemoryInfoSwitch(Z)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needMemoryDetail()Z

    move-result v0

    if-ne p1, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->saveMemoDisplaySwitch(Z)Z

    move-result p0

    return p0
.end method

.method public savePhoneManagerEntranceSwitch(Z)Z
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->needShowPhoneManagerSwitch()Z

    move-result v0

    const-string v1, "LockSettingPresenter"

    if-ne p1, v0, :cond_17

    const-string p0, "savePhoneManagerEntranceSwitch-   return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePhoneManagerEntranceSwitch-:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->savePhoneManagerSwitch(Z)Z

    move-result p0

    return p0
.end method

.method public setMemoryInfoSwitch()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-virtual {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needMemoryDetail()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->updateMemoryInfoSwitch(Z)V

    return-void
.end method

.method public setPhoneManagerEntranceSwitch()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v1

    const-string v2, "LockSettingPresenter"

    if-nez v1, :cond_10

    const-string p0, "setPhoneManagerEntranceSwitch -- feature has closed, not support phoneManager entrance"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->needShowPhoneManagerSwitch()Z

    move-result v1

    invoke-interface {p0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->updatePhoneManagerEntranceSwitch(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneManagerEntranceSwitch--isSupport:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->needShowPhoneManagerSwitch()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateEntry(Ljava/lang/String;Z)Z
    .registers 9

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-static {p1}, Lcom/oplus/quickstep/applock/AppLockModel;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    return v0

    :cond_13
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v3

    const-string v4, "updateEntry isLocked="

    const-string v5, "LockSettingPresenter"

    invoke-static {v4, p2, v5}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_36

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p1, v4, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApp(Ljava/lang/String;ILandroid/content/Intent;Z)Lcom/oplus/quickstep/applock/Result;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->handleLockFail(Lcom/oplus/quickstep/applock/Result;Z)V

    instance-of p1, p1, Lcom/oplus/quickstep/applock/Result$False;

    if-eqz p1, :cond_39

    return v0

    :cond_36
    invoke-virtual {v3, v0, v2, v1, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(ZZLjava/lang/String;I)V

    :cond_39
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v2
.end method

.method public updateInterestedApps()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mIsPowerSavingModleOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showLockedCategory(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showUnLockedCategory(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showBottomDivider(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->showLoadingView(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->enterPowerSaveMode(Z)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mView:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;->enterPowerSaveMode(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->mLockSettingModel:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->fetchData(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)V

    return-void
.end method
