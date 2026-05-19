.class final Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollEventValues"
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter$ScrollEventValues;->c:I

    return-void
.end method
