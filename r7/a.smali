.class public final Lr7/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr7/a;->a:Ljava/lang/Object;

    return-void
.end method
