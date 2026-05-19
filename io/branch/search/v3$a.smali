.class public Lio/branch/search/v3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/v3;->a(Lio/branch/search/h2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lio/branch/search/h2;

.field public final synthetic c:Lio/branch/search/v3;


# direct methods
.method public constructor <init>(Lio/branch/search/v3;Ljava/util/Map$Entry;Lio/branch/search/h2;)V
    .registers 4

    iput-object p1, p0, Lio/branch/search/v3$a;->c:Lio/branch/search/v3;

    iput-object p2, p0, Lio/branch/search/v3$a;->a:Ljava/util/Map$Entry;

    iput-object p3, p0, Lio/branch/search/v3$a;->b:Lio/branch/search/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lh4/z;
    .registers 3

    iget-object v0, p0, Lio/branch/search/v3$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lio/branch/search/v3$a$a;

    invoke-direct {v1, p0}, Lio/branch/search/v3$a$a;-><init>(Lio/branch/search/v3$a;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/v3$a;->a()Lh4/z;

    move-result-object p0

    return-object p0
.end method
