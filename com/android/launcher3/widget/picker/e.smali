.class public final synthetic Lcom/android/launcher3/widget/picker/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/e;->a:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    return-void
.end method


# virtual methods
.method public final onSlideInViewClosed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/e;->a:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->a(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    return-void
.end method
