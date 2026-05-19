.class Lcom/coui/appcompat/snackbar/COUISnackBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/snackbar/COUISnackBar;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View$OnClickListener;

.field public final synthetic b:Lcom/coui/appcompat/snackbar/COUISnackBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->b:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iput-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->b:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d()V

    return-void
.end method
