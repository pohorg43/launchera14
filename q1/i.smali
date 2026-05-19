.class public abstract Lq1/i;
.super Lq1/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lq1/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTarget"

.field private static isTagUsedAtLeastOnce:Z

.field private static tagId:I


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private final sizeDeterminer:Lq1/i$b;

.field public final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/bumptech/glide/R$id;->glide_custom_view_target_tag:I

    sput v0, Lq1/i;->tagId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lq1/a;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lq1/i;->view:Landroid/view/View;

    new-instance v0, Lq1/i$b;

    invoke-direct {v0, p1}, Lq1/i$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lq1/i;->sizeDeterminer:Lq1/i$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lq1/i;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lq1/i;->waitForLayout()Lq1/i;

    :cond_8
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lq1/i;->view:Landroid/view/View;

    sget v0, Lq1/i;->tagId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private maybeAddAttachStateListener()V
    .registers 3

    iget-object v0, p0, Lq1/i;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lq1/i;->isAttachStateListenerAdded:Z

    if-eqz v1, :cond_9

    goto :goto_11

    :cond_9
    iget-object v1, p0, Lq1/i;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/i;->isAttachStateListenerAdded:Z

    :cond_11
    :goto_11
    return-void
.end method

.method private maybeRemoveAttachStateListener()V
    .registers 3

    iget-object v0, p0, Lq1/i;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lq1/i;->isAttachStateListenerAdded:Z

    if-nez v1, :cond_9

    goto :goto_11

    :cond_9
    iget-object v1, p0, Lq1/i;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq1/i;->isAttachStateListenerAdded:Z

    :cond_11
    :goto_11
    return-void
.end method

.method private setTag(Ljava/lang/Object;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    sput-boolean v0, Lq1/i;->isTagUsedAtLeastOnce:Z

    iget-object p0, p0, Lq1/i;->view:Landroid/view/View;

    sget v0, Lq1/i;->tagId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setTagId(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lq1/i;->isTagUsedAtLeastOnce:Z

    if-nez v0, :cond_7

    sput p0, Lq1/i;->tagId:I

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearOnDetach()Lq1/i;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq1/i<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lq1/i;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lq1/i$a;

    invoke-direct {v0, p0}, Lq1/i$a;-><init>(Lq1/i;)V

    iput-object v0, p0, Lq1/i;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lq1/i;->maybeAddAttachStateListener()V

    return-object p0
.end method

.method public getRequest()Lp1/d;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lq1/i;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_15

    instance-of v0, p0, Lp1/d;

    if-eqz v0, :cond_d

    check-cast p0, Lp1/d;

    goto :goto_16

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public getSize(Lq1/g;)V
    .registers 5
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Lq1/i;->sizeDeterminer:Lq1/i$b;

    invoke-virtual {p0}, Lq1/i$b;->d()I

    move-result v0

    invoke-virtual {p0}, Lq1/i$b;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lq1/i$b;->e(II)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {p1, v0, v1}, Lq1/g;->c(II)V

    goto :goto_35

    :cond_14
    iget-object v0, p0, Lq1/i$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lq1/i$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object p1, p0, Lq1/i$b;->d:Lq1/i$b$a;

    if-nez p1, :cond_35

    iget-object p1, p0, Lq1/i$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lq1/i$b$a;

    invoke-direct {v0, p0}, Lq1/i$b$a;-><init>(Lq1/i$b;)V

    iput-object v0, p0, Lq1/i$b;->d:Lq1/i$b$a;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lq1/i;->view:Landroid/view/View;

    return-object p0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, Lq1/a;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lq1/i;->sizeDeterminer:Lq1/i$b;

    invoke-virtual {p1}, Lq1/i$b;->a()V

    iget-boolean p1, p0, Lq1/i;->isClearedByUs:Z

    if-nez p1, :cond_f

    invoke-direct {p0}, Lq1/i;->maybeRemoveAttachStateListener()V

    :cond_f
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, Lq1/a;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lq1/i;->maybeAddAttachStateListener()V

    return-void
.end method

.method public pauseMyRequest()V
    .registers 3

    invoke-virtual {p0}, Lq1/i;->getRequest()Lp1/d;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lq1/i;->isClearedByUs:Z

    invoke-interface {v0}, Lp1/d;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq1/i;->isClearedByUs:Z

    :cond_f
    return-void
.end method

.method public removeCallback(Lq1/g;)V
    .registers 2
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Lq1/i;->sizeDeterminer:Lq1/i$b;

    iget-object p0, p0, Lq1/i$b;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeMyRequest()V
    .registers 2

    invoke-virtual {p0}, Lq1/i;->getRequest()Lp1/d;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lp1/d;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Lp1/d;->j()V

    :cond_f
    return-void
.end method

.method public setRequest(Lp1/d;)V
    .registers 2
    .param p1  # Lp1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lq1/i;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Target for: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lq1/i;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final waitForLayout()Lq1/i;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq1/i<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lq1/i;->sizeDeterminer:Lq1/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq1/i$b;->c:Z

    return-object p0
.end method
