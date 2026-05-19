.class public final Lio/branch/search/AppDataOverride;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001c\u0010\u0006\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0004¨\u0006\u0014"
    }
    d2 = {
        "Lio/branch/search/AppDataOverride;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "label",
        "copy",
        "(Ljava/lang/String;)Lio/branch/search/AppDataOverride;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getLabel",
        "<init>",
        "(Ljava/lang/String;)V",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lio/branch/search/AppDataOverride;Ljava/lang/String;ILjava/lang/Object;)Lio/branch/search/AppDataOverride;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lio/branch/search/AppDataOverride;->copy(Ljava/lang/String;)Lio/branch/search/AppDataOverride;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lio/branch/search/AppDataOverride;
    .registers 2

    new-instance p0, Lio/branch/search/AppDataOverride;

    invoke-direct {p0, p1}, Lio/branch/search/AppDataOverride;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lio/branch/search/AppDataOverride;

    if-eqz v0, :cond_13

    check-cast p1, Lio/branch/search/AppDataOverride;

    iget-object p0, p0, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final getLabel()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AppDataOverride(label="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/AppDataOverride;->label:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
