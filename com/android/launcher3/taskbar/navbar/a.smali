.class public final synthetic Lcom/android/launcher3/taskbar/navbar/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/view/GestureDetector;

.field public final synthetic b:Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/GestureDetector;Lcom/android/launcher3/taskbar/navbar/NavBarImageView;ILandroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbar/a;->a:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/navbar/a;->b:Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    iput p3, p0, Lcom/android/launcher3/taskbar/navbar/a;->c:I

    iput-object p4, p0, Lcom/android/launcher3/taskbar/navbar/a;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/a;->a:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/a;->b:Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    iget v2, p0, Lcom/android/launcher3/taskbar/navbar/a;->c:I

    iget-object v3, p0, Lcom/android/launcher3/taskbar/navbar/a;->d:Landroid/view/View;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->a(Landroid/view/GestureDetector;Lcom/android/launcher3/taskbar/navbar/NavBarImageView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
