.class public final synthetic Lcom/android/launcher/behavior/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/behavior/DividerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/behavior/DividerManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/behavior/a;->a:Lcom/android/launcher/behavior/DividerManager;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/behavior/a;->a:Lcom/android/launcher/behavior/DividerManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/behavior/DividerManager;->a(Lcom/android/launcher/behavior/DividerManager;Landroid/view/View;IIII)V

    return-void
.end method
