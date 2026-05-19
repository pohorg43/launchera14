.class public final synthetic Lcom/android/launcher/guide/appguide/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/guide/appguide/AppGuidePage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/j;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/j;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->hide()V

    return-void
.end method
