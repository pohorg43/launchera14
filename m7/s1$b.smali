.class public final Lm7/s1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll4/f$b<",
        "Lm7/s1;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lm7/s1$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm7/s1$b;

    invoke-direct {v0}, Lm7/s1$b;-><init>()V

    sput-object v0, Lm7/s1$b;->a:Lm7/s1$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
