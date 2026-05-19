.class public final Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getSLock$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_10
    sget-object v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v2

    if-nez v2, :cond_20

    new-instance v2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    invoke-direct {v2, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->setSInstance(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getSInstance()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getSInstance$cp()Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    return-object p0
.end method

.method public final isExist(Landroid/content/Context;)Z
    .registers 6

    const-string p0, "PhoneManagerEntranceManger"

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.coloros.phonemanager"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oppo.cleandroid.ui.ClearMainActivity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-eqz p1, :cond_35

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_35

    move v3, v2

    goto :goto_36

    :cond_35
    move v3, v0

    :goto_36
    if-nez v3, :cond_3a

    move v3, v2

    goto :goto_3b

    :cond_3a
    move v3, v0

    :goto_3b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_4b} :catch_50

    if-nez p0, :cond_4e

    move v0, v2

    :cond_4e
    xor-int/2addr v0, v2

    goto :goto_65

    :catch_50
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExist:false  e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    return v0
.end method

.method public final needShowPhoneManagerEntranceAtLast()Z
    .registers 4

    const-string v0, " needShowPhoneManagerEntranceAtLast,AppFeatureUtils.isPhoneManagerEntranceSupport:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mNeedShowPhoneManagerSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMNeedShowPhoneManagerSwitch$cp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isPhoneManagerExist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "PhoneManagerEntranceManger"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result p0

    if-eqz p0, :cond_44

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMNeedShowPhoneManagerSwitch$cp()Z

    move-result p0

    if-eqz p0, :cond_44

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    return p0
.end method

.method public final setSInstance(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setSInstance$cp(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;)V

    return-void
.end method

.method public final shouldShowPhoneManagerCleanSwitch()Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final supportPhoneManagerEntrance()Z
    .registers 7

    const-string p0, "updatePhoneManagerSwitch AppFeatureUtils.isPhoneManagerEntranceSupport = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isPhoneManagerEntranceSupport()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLevelB+:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLevelB:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", FeatureOption.isExp:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !(AppFeatureUtils.isTablet ||AppFeatureUtils.isFoldScreen):"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_48

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-nez v3, :cond_48

    move v3, v4

    goto :goto_49

    :cond_48
    move v3, v5

    :goto_49
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "PhoneManagerEntranceManger"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isPhoneManagerEntranceSupport()Z

    move-result p0

    if-eqz p0, :cond_78

    invoke-static {v1}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-nez p0, :cond_67

    invoke-static {v2}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-eqz p0, :cond_78

    :cond_67
    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_78

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_78

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_79

    :cond_78
    move v4, v5

    :goto_79
    return v4
.end method

.method public final updatePhoneManagerExistState()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMContext$cp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->isExist(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setPhoneManagerExist$cp(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePhoneManagerExistState isPhoneManagerExist:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$isPhoneManagerExist$cp()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneManagerEntranceManger"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public final updatePhoneManagerSwitch(Landroid/content/Context;)V
    .registers 4

    const-string p0, "PhoneManagerEntranceManger"

    :try_start_2
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    invoke-static {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setMContext$cp(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMContext$cp()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_46

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMContext$cp()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :cond_20
    const-string p1, "display_phone_manager_entrance"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    invoke-static {v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$setMNeedShowPhoneManagerSwitch$cp(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePhoneManagerSwitch mNeedShowPhoneManagerSwitch = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMNeedShowPhoneManagerSwitch$cp()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_49

    goto :goto_4e

    :catchall_49
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_4e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_59

    const-string v0, "updatePhoneManagerSwitch(), e="

    invoke-static {v0, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_59
    return-void
.end method
