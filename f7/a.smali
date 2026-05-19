.class public abstract Lf7/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TV;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lf7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf7/c<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final isEmpty()Z
    .registers 1

    invoke-virtual {p0}, Lf7/a;->a()Lf7/c;

    move-result-object p0

    invoke-virtual {p0}, Lf7/c;->a()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lf7/a;->a()Lf7/c;

    move-result-object p0

    invoke-virtual {p0}, Lf7/c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
