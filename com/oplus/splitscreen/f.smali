.class public final synthetic Lcom/oplus/splitscreen/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/splitscreen/SplitScreenGuideManager$1;

.field public final synthetic b:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenGuideManager$1;Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/f;->a:Lcom/oplus/splitscreen/SplitScreenGuideManager$1;

    iput-object p2, p0, Lcom/oplus/splitscreen/f;->b:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/f;->a:Lcom/oplus/splitscreen/SplitScreenGuideManager$1;

    iget-object p0, p0, Lcom/oplus/splitscreen/f;->b:Landroid/content/res/Configuration;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->a(Lcom/oplus/splitscreen/SplitScreenGuideManager$1;Landroid/content/res/Configuration;)V

    return-void
.end method
