.class public final Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;
.super Lcom/android/rusconfig/RusBaseTxtConfigManager$KeyWithName;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/rusconfig/RusBaseTxtConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemArray"
.end annotation


# instance fields
.field private final status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/rusconfig/RusBaseTxtConfigManager$KeyWithName;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;->status:I

    return-void
.end method


# virtual methods
.method public final getStatus()I
    .registers 1

    iget p0, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;->status:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ItemArray=name:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseTxtConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
