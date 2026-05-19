.class public final synthetic Lcom/android/quickstep/views/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/k;->a:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/k;->a:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->a(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/view/View;Z)V

    return-void
.end method
