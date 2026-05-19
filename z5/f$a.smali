.class public final Lz5/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ly6/l0;

.field public final b:I


# direct methods
.method public constructor <init>(Ly6/l0;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/f$a;->a:Ly6/l0;

    iput p2, p0, Lz5/f$a;->b:I

    return-void
.end method
