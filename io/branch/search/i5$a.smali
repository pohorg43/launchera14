.class public Lio/branch/search/i5$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/i5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
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
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic c:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/i5$a;->b:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lio/branch/search/i5$a;->c:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/branch/search/i5$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/branch/search/i5$a;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/branch/search/i5$a;->b:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/i5$a;->a:Z

    goto :goto_14

    :cond_d
    iget-object p1, p0, Lio/branch/search/i5$a;->b:Landroidx/lifecycle/MediatorLiveData;

    iget-object p0, p0, Lio/branch/search/i5$a;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    :goto_14
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/branch/search/i5$a;->a(Ljava/util/List;)V

    return-void
.end method
