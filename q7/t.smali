.class public final Lq7/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final b:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq7/t;->a:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq7/t;->b:Lr7/f0;

    return-void
.end method
