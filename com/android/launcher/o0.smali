.class public final synthetic Lcom/android/launcher/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lcom/android/launcher/UninstallRemoveAppPanel;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/o0;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/launcher/o0;->b:Lcom/android/launcher/UninstallRemoveAppPanel;

    iput-object p3, p0, Lcom/android/launcher/o0;->c:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/o0;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/android/launcher/o0;->b:Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object p0, p0, Lcom/android/launcher/o0;->c:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->b(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;)V

    return-void
.end method
