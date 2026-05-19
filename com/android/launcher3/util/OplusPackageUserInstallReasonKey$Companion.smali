.class public final Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;
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

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;
    .registers 4

    const-string/jumbo p0, "session"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v1

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    return-object p0
.end method
