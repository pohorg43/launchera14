.class public final synthetic Lcom/android/launcher/guide/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/guide/GuidePageManager$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/GuidePageManager$4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/e;->a:Lcom/android/launcher/guide/GuidePageManager$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/e;->a:Lcom/android/launcher/guide/GuidePageManager$4;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager$4;->b(Lcom/android/launcher/guide/GuidePageManager$4;)V

    return-void
.end method
