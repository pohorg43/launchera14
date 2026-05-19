.class public abstract Lb6/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb6/b$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lb6/b$b;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb6/b$b;->f([Ljava/lang/String;)V

    return-void
.end method

.method public b(Lh6/b;)La6/t$a;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lb6/b$b;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public d(Lh6/b;Lh6/f;)V
    .registers 3

    return-void
.end method

.method public e(Lm6/f;)V
    .registers 2

    return-void
.end method

.method public abstract f([Ljava/lang/String;)V
.end method
