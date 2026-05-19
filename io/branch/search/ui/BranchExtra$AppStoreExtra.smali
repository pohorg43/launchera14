.class public final Lio/branch/search/ui/BranchExtra$AppStoreExtra;
.super Lio/branch/search/ui/BranchExtra;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/BranchExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppStoreExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/BranchExtra$AppStoreExtra$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"
    }
    d2 = {
        "Lio/branch/search/ui/BranchExtra$AppStoreExtra;",
        "Lio/branch/search/ui/BranchExtra;",
        "",
        "averageRating",
        "",
        "ratingsCount",
        "",
        "downloadsCount",
        "appSizeInMB",
        "<init>",
        "(FJLjava/lang/String;Ljava/lang/String;)V",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/ui/BranchExtra$AppStoreExtra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:F

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/ui/BranchExtra$AppStoreExtra$a;

    invoke-direct {v0}, Lio/branch/search/ui/BranchExtra$AppStoreExtra$a;-><init>()V

    sput-object v0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FJLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "downloadsCount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSizeInMB"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/ui/BranchExtra;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->a:F

    iput-wide p2, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->b:J

    iput-object p4, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p0, p1, :cond_31

    instance-of v0, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;

    if-eqz v0, :cond_2f

    check-cast p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;

    iget v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->a:F

    iget v1, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->a:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2f

    iget-wide v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->b:J

    iget-wide v2, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    iget-object v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->c:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->d:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    return p0

    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->b:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->d:Ljava/lang/String;

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_29
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "AppStoreExtra(averageRating="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ratingsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSizeInMB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->d:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
