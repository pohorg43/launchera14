.class public Lz0/l$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lz0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/m<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lp1/i;

.field public final synthetic c:Lz0/l;


# direct methods
.method public constructor <init>(Lz0/l;Lp1/i;Lz0/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/i;",
            "Lz0/m<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lz0/l$d;->c:Lz0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz0/l$d;->b:Lp1/i;

    iput-object p3, p0, Lz0/l$d;->a:Lz0/m;

    return-void
.end method
