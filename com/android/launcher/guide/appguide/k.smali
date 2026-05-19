.class public final synthetic Lcom/android/launcher/guide/appguide/k;
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

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/k;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/k;->a:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-static {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->e(Lcom/android/launcher/guide/appguide/AppGuidePage;)V

    return-void
.end method
