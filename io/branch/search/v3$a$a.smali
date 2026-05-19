.class public Lio/branch/search/v3$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/v3$a;->a()Lh4/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/branch/search/w3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/v3$a;


# direct methods
.method public constructor <init>(Lio/branch/search/v3$a;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/v3$a$a;->a:Lio/branch/search/v3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 4
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    iget-object v0, p0, Lio/branch/search/v3$a$a;->a:Lio/branch/search/v3$a;

    iget-object v0, v0, Lio/branch/search/v3$a;->c:Lio/branch/search/v3;

    iget-object v0, v0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$a$a$a;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$a$a$a;-><init>(Lio/branch/search/v3$a$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/branch/search/v3$a$a;->a(Ljava/util/List;)V

    return-void
.end method
