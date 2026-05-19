.class public Lio/branch/search/c4$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/c4;->b(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lio/branch/search/g4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/c4;


# direct methods
.method public constructor <init>(Lio/branch/search/c4;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/c4$d;->a:Lio/branch/search/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/c4$d;->a:Lio/branch/search/c4;

    invoke-virtual {p0}, Lio/branch/search/c4;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/c4$d;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
