.class public final Lu7/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lr7/f0;

.field public static final c:Lr7/f0;

.field public static final d:Lr7/f0;

.field public static final e:Lr7/f0;

.field public static final f:Lr7/f0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lu7/i$a;->a:Lu7/i$a;

    sput-object v0, Lu7/i;->a:Lkotlin/jvm/functions/Function3;

    new-instance v0, Lr7/f0;

    const-string v1, "STATE_REG"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu7/i;->b:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu7/i;->c:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu7/i;->d:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu7/i;->e:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu7/i;->f:Lr7/f0;

    return-void
.end method
