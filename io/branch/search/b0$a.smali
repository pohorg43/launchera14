.class public Lio/branch/search/b0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/b0;


# direct methods
.method public constructor <init>(Lio/branch/search/b0;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/b0$a;->a:Lio/branch/search/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lio/branch/search/b0$a;->a:Lio/branch/search/b0;

    invoke-static {p0}, Lio/branch/search/b0;->a(Lio/branch/search/b0;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lio/branch/search/b0$a;->a:Lio/branch/search/b0;

    invoke-virtual {p0}, Lio/branch/search/b0;->e()V

    return-void
.end method
