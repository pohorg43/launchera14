.class public abstract Lio/branch/search/f5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/f5$b;,
        Lio/branch/search/f5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NO:",
        "Ljava/lang/Object;",
        "YES:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/f5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    instance-of v0, p0, Lio/branch/search/f5$b;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    goto :goto_b

    :cond_6
    instance-of p0, p0, Lio/branch/search/f5$a;

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    :goto_b
    return p0

    :cond_c
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
