.class public final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$setupCallbacks$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setupCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$setupCallbacks$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    const-string p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$setupCallbacks$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$cancelHide(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    return-void
.end method
