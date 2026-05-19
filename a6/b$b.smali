.class public La6/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:La6/w;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:La6/b;


# direct methods
.method public constructor <init>(La6/b;La6/w;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/w;",
            ")V"
        }
    .end annotation

    const-string v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La6/b$b;->c:La6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La6/b$b;->a:La6/w;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La6/b$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, La6/b$b;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, La6/b$b;->c:La6/b;

    iget-object v0, v0, La6/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, La6/b$b;->a:La6/w;

    iget-object p0, p0, La6/b$b;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public b(Lh6/b;Li5/v0;)La6/t$a;
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La6/b$b;->c:La6/b;

    iget-object v0, v0, La6/b;->a:La6/a;

    iget-object p0, p0, La6/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, p0}, La6/d;->t(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;

    move-result-object p0

    return-object p0
.end method
