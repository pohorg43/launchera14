.class public final Lv7/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I

.field public static final b:Lr7/f0;

.field public static final c:Lr7/f0;

.field public static final d:Lr7/f0;

.field public static final e:Lr7/f0;

.field public static final f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ly1/a;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lv7/j;->a:I

    new-instance v0, Lr7/f0;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv7/j;->b:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv7/j;->c:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv7/j;->d:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv7/j;->e:Lr7/f0;

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ly1/a;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lv7/j;->f:I

    return-void
.end method
