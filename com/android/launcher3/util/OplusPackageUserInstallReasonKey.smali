.class public final Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;
.super Lcom/android/launcher3/util/PackageUserKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey$Companion;


# instance fields
.field private mInstallReason:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->Companion:Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput p3, p0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->mInstallReason:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->mInstallReason:I

    iget v2, p1, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->mInstallReason:I

    if-ne v0, v2, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public getInstallReason()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->mInstallReason:I

    return p0
.end method

.method public final getMInstallReason()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->mInstallReason:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    return p0
.end method

.method public final setMInstallReason(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->mInstallReason:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mInstallReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/util/OplusPackageUserInstallReasonKey;->mInstallReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
