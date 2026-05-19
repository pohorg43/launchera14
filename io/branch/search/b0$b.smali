.class public Lio/branch/search/b0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/branch/search/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/branch/search/b0;)V
    .registers 3
    .param p1  # Lio/branch/search/b0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/branch/search/b0$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/b0;Lio/branch/search/b0$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/b0$b;-><init>(Lio/branch/search/b0;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .registers 1

    iget-object p0, p0, Lio/branch/search/b0$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/b0;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lio/branch/search/b0;->a()V

    :cond_d
    return-void
.end method
