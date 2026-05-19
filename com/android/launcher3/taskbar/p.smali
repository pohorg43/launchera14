.class public final synthetic Lcom/android/launcher3/taskbar/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p;->a:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/p;->a:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->t(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)Z

    move-result p0

    return p0
.end method
