.class public abstract Lcom/android/launcher/backup/mode/RestoreBaseShortcut;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRestoreBaseShortcut.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestoreBaseShortcut.kt\ncom/android/launcher/backup/mode/RestoreBaseShortcut\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
    }
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mComponentInfo:Landroid/content/pm/ComponentInfo;

.field private final mComponentName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mMetaData:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;

.field private mShortcutId:Ljava/lang/String;

.field private mUserHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mUserHandle:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    if-nez p3, :cond_12

    const-string p3, ""

    :cond_12
    iput-object p3, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mCategory:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_36

    if-eqz p2, :cond_1c

    iget-object p3, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    move-object p3, p1

    :goto_1d
    iput-object p3, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_23

    iget-object p1, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :cond_23
    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mComponentName:Ljava/lang/String;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent().setClassName(mP…kageName, mComponentName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mIntent:Landroid/content/Intent;

    goto :goto_41

    :cond_36
    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mComponentName:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mIntent:Landroid/content/Intent;

    :goto_41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParcelClassLoader"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mUserHandle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    iput-object v1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, v0

    :goto_1d
    iput-object v2, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mComponentName:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intent().setClassName(mP…kageName, mComponentName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3b

    :cond_3a
    move-object v1, v0

    :goto_3b
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_45
    if-ge v2, v1, :cond_55

    iget-object v3, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mUserHandle:Ljava/util/ArrayList;

    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_55
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    :cond_5c
    move-object v1, v0

    :goto_5d
    if-nez v1, :cond_61

    const-string v1, ""

    :cond_61
    iput-object v1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mCategory:Ljava/lang/String;

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    :cond_69
    iput-object v0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mMetaData:Landroid/os/Bundle;

    return-void
.end method

.method private final initData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mMetaData:Landroid/os/Bundle;

    if-nez v0, :cond_d

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "initData, mMetaData is null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    invoke-virtual {p0, v0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getShortcutId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mShortcutId:Ljava/lang/String;

    :cond_17
    return-void
.end method


# virtual methods
.method public abstract getComponentIcon(Landroid/content/pm/ComponentInfo;)I
.end method

.method public abstract getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;
.end method

.method public abstract getComponentLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getId()I
.end method

.method public final getMCategory()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public final getMComponentInfo()Landroid/content/pm/ComponentInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    return-object p0
.end method

.method public final getMComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getMMetaData()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mMetaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getMPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMUserHandle()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mUserHandle:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMetaData()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mMetaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getShortcutId(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "getShortcutId, Couldn\'t find info: "

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mShortcutId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mShortcutId:Ljava/lang/String;

    return-object p0

    :cond_12
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mMetaData:Landroid/os/Bundle;

    if-eqz v2, :cond_6d

    const-string v3, "com.android.app.shortcuts_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_67

    const/4 v4, 0x0

    :try_start_2a
    iget-object p0, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_3a} :catch_51
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_3a} :catch_3b

    goto :goto_6d

    :catch_3b
    move-exception p0

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6d

    :catch_51
    move-exception p0

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6d

    :cond_67
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_6d
    :goto_6d
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final setMCategory(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public final setMComponentInfo(Landroid/content/pm/ComponentInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setMMetaData(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mMetaData:Landroid/os/Bundle;

    return-void
.end method

.method public final setMUserHandle(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mUserHandle:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMetaData(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->mMetaData:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->initData()V

    return-void
.end method
