.class public final synthetic Lcom/android/wm/shell/splitscreen/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/SplitControlBarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k;->a:Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/k;->a:Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->d(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;IIIIIIII)V

    return-void
.end method
