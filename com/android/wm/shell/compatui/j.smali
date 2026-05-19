.class public final synthetic Lcom/android/wm/shell/compatui/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/compatui/CompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/j;->a:Lcom/android/wm/shell/compatui/CompatUILayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/j;->a:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->c(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
