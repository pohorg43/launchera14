.class public abstract Li4/d;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract d(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Li4/d;->d(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge size()I
    .registers 1

    invoke-virtual {p0}, Li4/d;->a()I

    move-result p0

    return p0
.end method
