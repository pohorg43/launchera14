.class public final Ly6/m0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ly6/s0;

.field public final b:Ly6/j1;


# direct methods
.method public constructor <init>(Ly6/s0;Ly6/j1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/m0$b;->a:Ly6/s0;

    iput-object p2, p0, Ly6/m0$b;->b:Ly6/j1;

    return-void
.end method
