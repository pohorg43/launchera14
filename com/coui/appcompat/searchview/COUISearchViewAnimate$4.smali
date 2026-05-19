.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;->b:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;->b:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;->a:I

    invoke-static {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V

    return-void
.end method
