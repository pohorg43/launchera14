.class public Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->startToChangeIconPanelAnim(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

.field public final synthetic c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;ILcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->a:I

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$100(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1300(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1400(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1500(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)I

    move-result v4

    iget v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->a:I

    invoke-static/range {v0 .. v5}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->newInstance(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$000(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->setPreloadDrawables(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->c:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1600(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->setOnChoosePanelHideListener(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->replacePanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    return-void
.end method
