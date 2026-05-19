.class public final Lcom/android/launcher/backup/mode/RestoreActivityShortcut;
.super Lcom/android/launcher/backup/mode/RestoreBaseShortcut;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/backup/mode/RestoreActivityShortcut$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/backup/mode/RestoreActivityShortcut$Companion;

.field private static final TAG:Ljava/lang/String; = "ActivityShortcut"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/backup/mode/RestoreActivityShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/backup/mode/RestoreActivityShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/backup/mode/RestoreActivityShortcut;->Companion:Lcom/android/launcher/backup/mode/RestoreActivityShortcut$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V
    .registers 5

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;-><init>(Landroid/content/Context;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V

    iget-object p1, p2, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->setMetaData(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getComponentIcon(Landroid/content/pm/ComponentInfo;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    if-nez v0, :cond_67

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    goto :goto_15

    :cond_14
    move-object p1, v0

    :goto_15
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_22

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    goto :goto_23

    :cond_22
    move-object p1, v0

    :goto_23
    if-eqz p1, :cond_4d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4d

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->setMComponentInfo(Landroid/content/pm/ComponentInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    instance-of v1, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_44

    check-cast p1, Landroid/content/pm/ActivityInfo;

    goto :goto_45

    :cond_44
    move-object p1, v0

    :goto_45
    if-eqz p1, :cond_49

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :cond_49
    invoke-virtual {p0, v0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->setMetaData(Landroid/os/Bundle;)V

    goto :goto_67

    :cond_4d
    const-string p1, "getComponentInfo, cannot find package info for "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityShortcut"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    return-object p0
.end method

.method public getComponentLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const/16 v0, 0x2f

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public getId()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMComponentName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
