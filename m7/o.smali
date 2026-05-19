.class public final Lm7/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm7/o;->a:Lr7/f0;

    return-void
.end method
