.class public final Lz5/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Lz5/g;

.field public static final f:Lz5/g;


# instance fields
.field public final a:Lz5/j;

.field public final b:Lz5/h;

.field public final c:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v6, Lz5/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZI)V

    sput-object v6, Lz5/g;->f:Lz5/g;

    return-void
.end method

.method public constructor <init>(Lz5/j;Lz5/h;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/g;->a:Lz5/j;

    iput-object p2, p0, Lz5/g;->b:Lz5/h;

    iput-boolean p3, p0, Lz5/g;->c:Z

    iput-boolean p4, p0, Lz5/g;->d:Z

    return-void
.end method

.method public constructor <init>(Lz5/j;Lz5/h;ZZI)V
    .registers 6

    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/g;->a:Lz5/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lz5/g;->b:Lz5/h;

    iput-boolean p3, p0, Lz5/g;->c:Z

    iput-boolean p4, p0, Lz5/g;->d:Z

    return-void
.end method
