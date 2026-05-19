.class public final Lio/branch/search/ui/ImageLoadingStrategy$Url;
.super Lio/branch/search/ui/ImageLoadingStrategy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Url"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/ImageLoadingStrategy$Url$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"
    }
    d2 = {
        "Lio/branch/search/ui/ImageLoadingStrategy$Url;",
        "Lio/branch/search/ui/ImageLoadingStrategy;",
        "",
        "url",
        "Lio/branch/search/l;",
        "resultType",
        "fallback",
        "<init>",
        "(Ljava/lang/String;Lio/branch/search/l;Lio/branch/search/ui/ImageLoadingStrategy;)V",
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
            "Lio/branch/search/ui/ImageLoadingStrategy$Url;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/branch/search/l;

.field public final c:Lio/branch/search/ui/ImageLoadingStrategy;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/ui/ImageLoadingStrategy$Url$a;

    invoke-direct {v0}, Lio/branch/search/ui/ImageLoadingStrategy$Url$a;-><init>()V

    sput-object v0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/branch/search/l;Lio/branch/search/ui/ImageLoadingStrategy;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/ui/ImageLoadingStrategy;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->b:Lio/branch/search/l;

    iput-object p3, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->c:Lio/branch/search/ui/ImageLoadingStrategy;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_29

    instance-of v0, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    if-eqz v0, :cond_27

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->b:Lio/branch/search/l;

    iget-object v1, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;->b:Lio/branch/search/l;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->c:Lio/branch/search/ui/ImageLoadingStrategy;

    iget-object p1, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;->c:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->b:Lio/branch/search/l;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->c:Lio/branch/search/ui/ImageLoadingStrategy;

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Url(url="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->b:Lio/branch/search/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->c:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->c:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
