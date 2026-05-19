.class public final synthetic Lcom/oplus/splitscreen/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/oplus/splitscreen/DividerRotationTips;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerRotationTips;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/a;->a:Lcom/oplus/splitscreen/DividerRotationTips;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/a;->a:Lcom/oplus/splitscreen/DividerRotationTips;

    invoke-static {p0}, Lcom/oplus/splitscreen/DividerRotationTips;->f(Lcom/oplus/splitscreen/DividerRotationTips;)V

    return-void
.end method
