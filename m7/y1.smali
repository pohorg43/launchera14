.class public final Lm7/y1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lr7/f0;

.field public static final b:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:Lr7/f0;

.field public static final d:Lr7/f0;

.field public static final e:Lr7/f0;

.field public static final f:Lm7/d1;

.field public static final g:Lm7/d1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm7/y1;->a:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm7/y1;->b:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm7/y1;->c:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm7/y1;->d:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm7/y1;->e:Lr7/f0;

    new-instance v0, Lm7/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm7/d1;-><init>(Z)V

    sput-object v0, Lm7/y1;->f:Lm7/d1;

    new-instance v0, Lm7/d1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lm7/d1;-><init>(Z)V

    sput-object v0, Lm7/y1;->g:Lm7/d1;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Lm7/o1;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lm7/o1;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_11

    iget-object v0, v0, Lm7/o1;->a:Lm7/n1;

    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    move-object p0, v0

    :cond_11
    :goto_11
    return-object p0
.end method
