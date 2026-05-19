.class public final synthetic Lcom/android/launcher/guide/appguide/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/guide/appguide/AppGuidePage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/h;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/h;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->f(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V

    return-void
.end method
