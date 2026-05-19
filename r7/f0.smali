.class public final Lr7/f0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/f0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3c

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lr7/f0;->a:Ljava/lang/String;

    const/16 v1, 0x3e

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
